#include "unit.h"
#include "action.h"
#include "unit_initialisation.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>


//todo
//uses rand, does not seed rand, do srand somewhere!!!




int main(int argc, char* argv[]);

int main(int argc, char* argv[]){
    return 0;
}

void init_unit_file(char* filepath){
    action_init(filepath);
    srand(time(NULL));
    atexit(unit_data_close);
}


//max level 60 should stop max stats overflow
char unit_gain_exp(unit_t * restrict unit, unsigned char exp, unsigned char * restrict stats_gained){
    if (unit->level == 60) return 0;
    unit->exp += exp;
    if (unit->exp <100) return 0;
    unit->exp -= 100;
    ++unit->level;

    unsigned char* growth_percent_ptr = &unit->hp_g;
    unsigned char* stats_ptr = stats_gained;

    for (int i = 0; i<8; ++i){
        *stats_ptr = *growth_percent_ptr/100;
        if (rand()%100 < *growth_percent_ptr % 100) ++(*stats_ptr);
        ++growth_percent_ptr;
        ++stats_ptr;
    }
    stats_add(&unit->hp_b, stats_gained);
    stats_add(&unit->hp, stats_gained);
    return 1;
}



void unit_init_map(unit_t * restrict unit){
    stats_set(&unit->hp, &unit->hp_b);
    unit->to_move = 1;
    unit->half_health = 0;
    unit->status_cond = NO_STATUS;
};


//compiles to fast memcpy call with -O3 (faster implementation than calling memcpy in C code compiles!)
void unit_copy(unit_t* restrict dest, const unit_t* restrict src){
    char* src_ptr = (char *) src;
    char* dest_ptr = (char *) dest;
    for (int i = 0; i<sizeof(unit_t); ++i) *(dest_ptr++) = *(src_ptr++);
}

//0<= item_no <= 4 
void unit_equip_item(unit_t* restrict unit, unsigned char item_no) {
    weapon_t temp_store;
    memcpy(&temp_store, &unit->items[item_no], sizeof(weapon_t));
    memmove(&unit->items[1], &unit->items[0], sizeof(weapon_t)*(item_no-1));
    memcpy(&unit->items[0], &temp_store, sizeof(weapon_t));
}

void unit_discard_equipped(unit_t* restrict unit) {
    memmove(&unit->items[0], &unit->items[1], sizeof(weapon_t)*(UNIT_INVENTORY_SIZE-1));
    unit->items[UNIT_INVENTORY_SIZE-1] = (weapon_t){0};
}

//todo
/*

//TO CONSIDER AVOID FROM TERRAIN!!!
//Replace hit and crit and damage with params using same calcs

Skills considered:
    ALWAYS_HIT
    ATT_UP
    CRIT_UP
    EXTRA_CRIT
    CRIT_IMMUNE
    SET_HP_TO_1
    CANNOT_CRIT
    COUNTER_ALL
    COUNTER_INF_RANGE

    todo IGNORE DEF
    todo Use up weapon uses

returns 0 for miss or 0 damage "Nothing happened" or "..." message?
*/
unsigned char unit_attack(unit_t* restrict attacker, unit_t* restrict defender, unsigned char hit, unsigned char dmg, unsigned char crit){
    int damage = dmg;
    if (!damage || (hit != 255) && (rand()%100 + rand()%100 >= 2*hit)) return 0;
    if (rand()%100 < crit) damage *= 3;

    //todo
    //potential_crit_visual();
    damage = (damage>defender->hp) ? defender->hp : damage;
    defender->hp -= damage;
    return damage;
}

unsigned char unit_get_hit(const unit_t* restrict attacker, const unit_t* restrict defender){
    if (attacker->ability == ALWAYS_HIT || attacker->items[0].acc & 128) return -1;
    int hit = (attacker->items[0].str & 128) ? attacker->items[0].acc & 127 + attacker->skl - defender->lck : attacker->items[0].acc & 127 + attacker->skl - defender->spd;
    return (hit>100) ? 100 : hit;
}

unsigned char unit_get_dmg(const unit_t* restrict attacker, const unit_t* restrict defender, unsigned char effective){
    if (weapon_has_ability(&attacker->items[0], SET_HP_TO_1, attacker->half_health)) return defender->hp-1;
    int damage = (effective ? attacker->items[0].str & 127 : 3*(attacker->items[0].str & 127)) + (attacker->items[0].str&128 ? attacker->mgc : attacker->att);
    if (weapon_has_ability(&attacker->items[0], ATT_UP, attacker->half_health)) damage += damage>>1;
    return (damage>255) ? 255 : damage;
}

unsigned char unit_get_crit(const unit_t* restrict attacker, const unit_t* restrict defender, unsigned char effective){
    if (defender->ability != CRIT_IMMUNE || weapon_has_ability(&attacker->items[0], CANNOT_CRIT, attacker->half_health)) return 0;
    int crit = attacker->items[0].crit + attacker->skl - defender->lck
        + weapon_has_ability(&attacker->items[0], CRIT_UP, attacker->half_health) * 30 + (attacker->ability == EXTRA_CRIT) * 20 + (effective) * 10;
    return (crit>100) ? 100 : crit;
}


//todo CHECK THAT UNIT CAN USE WEAPON!!!
//does not account for windsweep
unsigned char unit_can_counter(const unit_t* defender, unsigned char distance){
    return defender->items[0].can_attack && 
        (defender->ability == COUNTER_ALL || weapon_has_ability(&defender->items[0], COUNTER_INF_RANGE, defender->half_health) ||
        defender->items[0].min_range <= distance && defender->items[0].max_range >= distance);
}

//FURY considered in get_forecast not here 
unsigned char unit_can_follow_up(const unit_t* attacker, const unit_t* defender){
    return weapon_has_ability(&attacker->items[0], FAST, attacker->half_health) ||
        !weapon_has_ability(&attacker->items[0], SLOW, attacker->half_health) && attacker->spd > defender->spd+4;
}


void unit_get_forecast(battle_forecast_t* forecast, const unit_t* attacker, const unit_t* defender, unsigned char distance){
    unsigned char effective = defender->items[0].type && weapon_has_ability(&attacker->items[0], defender->items[0].type, attacker->half_health) ||
        weapon_has_ability(&attacker->items[0], defender->move_type + E_INFANTRY, attacker->half_health);
    forecast->att_hit = unit_get_hit(attacker, defender);
    forecast->att_dmg = unit_get_dmg(attacker, defender, effective);
    forecast->att_crit = unit_get_crit(attacker, defender, effective);
    forecast->att_no_of_hits = weapon_has_ability(&attacker->items[0], FRENZY, attacker->half_health) ? 1 : 2;
    forecast->att_follow_up = unit_can_follow_up(attacker, defender);
    if (forecast->att_follow_up && weapon_has_ability(&attacker->items[0], FURY, attacker->half_health)) {forecast->att_follow_up = 0; forecast->att_no_of_hits *= 2;}
    unsigned char counter = unit_can_counter(defender, distance);
    forecast->counter = counter;
    if (counter) {
        effective = attacker->items[0].type && weapon_has_ability(&defender->items[0], attacker->items[0].type, defender->half_health) ||
            weapon_has_ability(&defender->items[0], attacker->move_type + E_INFANTRY, defender->half_health);
        forecast->def_hit = unit_get_hit(defender, attacker);
        forecast->def_dmg = unit_get_dmg(defender, attacker, effective);
        forecast->def_crit = unit_get_crit(defender, attacker, effective);
        forecast->def_no_of_hits = weapon_has_ability(&defender->items[0], FRENZY, defender->half_health) ? 1 : 2;
        forecast->def_follow_up = unit_can_follow_up(defender, attacker);
        if (forecast->def_follow_up && weapon_has_ability(&defender->items[0], FURY, defender->half_health)) {forecast->def_follow_up = 0; forecast->def_no_of_hits *= 2;}
        forecast->def_first = weapon_has_ability(&attacker->items[0], SLOW_DRAW, attacker->half_health) || weapon_has_ability(&defender->items[0], QUICK_DRAW, defender->half_health);

    } else {forecast->def_no_of_hits = 0; forecast->def_follow_up = 0; forecast->def_first = 0;}
}


//Assumes int is 4 bytes
void unit_run_forecast_aux(battle_forecast_t* forecast, unit_t* attacker, unit_t* defender){
    if (forecast->def_first) {
        int temp = *(int *)&forecast->att_hit;
        *(int *)&forecast->att_hit = *(int *)&forecast->def_hit;
        *(int *)&forecast->def_hit = temp;
        char follow_up = forecast->att_follow_up;
        forecast->att_follow_up = forecast->def_follow_up;
        forecast->def_follow_up = follow_up;
        forecast->def_first = 0;
        return unit_run_forecast(forecast, defender, attacker);
    }
    for(int i = 0; i<forecast->att_no_of_hits; ++i) {
        unit_attack(attacker, defender, forecast->att_hit, forecast->att_dmg, forecast->att_crit);
        if (!defender->hp) return;
    }
    if (forecast->counter) for(int i = 0; i<forecast->def_no_of_hits; ++i) {
        unit_attack(defender, attacker, forecast->def_hit, forecast->def_dmg, forecast->def_crit);
        if (!attacker->hp) return;
    }
    if (forecast->att_follow_up) for(int i = 0; i<forecast->att_no_of_hits; ++i) {
        unit_attack(attacker, defender, forecast->att_hit, forecast->att_dmg, forecast->att_crit);
        if (!defender->hp) return;
    }
    if (forecast->def_follow_up) for(int i = 0; i<forecast->def_no_of_hits; ++i) {
        unit_attack(defender, attacker, forecast->def_hit, forecast->def_dmg, forecast->def_crit);
        if (!attacker->hp) return;
    }
}

//todo CORROSION
void unit_run_forecast_apply(unit_t* attacker, unit_t* defender){
    if (weapon_has_ability(&attacker->items[0], APP_POISON, attacker->half_health)) defender->status_cond = POISON;
    else if (weapon_has_ability(&attacker->items[0], APP_WEAK, attacker->half_health)) defender->status_cond = WEAK;
    else if (weapon_has_ability(&attacker->items[0], APP_FREEZE, attacker->half_health)) defender->status_cond = FREEZE;
    else if (weapon_has_ability(&attacker->items[0], APP_SILENCE, attacker->half_health)) defender->status_cond = SILENCE;
    else if (defender->def >=2 && defender->res >= 2 && weapon_has_ability(&attacker->items[0], DEBUFF_DEF1, attacker->half_health))
        {defender->def -= 2; defender->res -= 2;}
    else if (defender->def >=4 && defender->res >= 4 && weapon_has_ability(&attacker->items[0], DEBUFF_DEF2, attacker->half_health))
        {defender->def -= 4; defender->res -= 4;}
    else if (defender->def >=6 && defender->res >= 6 && weapon_has_ability(&attacker->items[0], DEBUFF_DEF3, attacker->half_health))
        {defender->def -= 6; defender->res -= 6;}
}

void unit_run_forecast(battle_forecast_t* forecast, unit_t* attacker, unit_t* defender){
    unit_run_forecast_aux(forecast, attacker, defender);
    if (forecast->counter) unit_run_forecast_apply(defender, attacker);
    unit_run_forecast_apply(attacker, defender);


    //only update half_health at end of combat
    
    attacker->half_health = attacker->hp <= attacker->hp_b>>1;
    defender->half_health = defender->hp <= defender->hp_b>>1;
    if (!attacker->hp) return unit_defeated(defender, attacker);
    if (!defender->hp) return unit_defeated(attacker, defender);

    //no deaths exp

    //todo something with this!!!
    unsigned char stats_gained[8];
    if (attacker->ally) unit_gain_exp(attacker, 3, stats_gained);
    if (defender->ally) unit_gain_exp(defender, 3, stats_gained);

}


void unit_defeated(unit_t* restrict winner, unit_t* restrict defeated){
    defeated->x_pos = -1;

    //todo something with this!!! 
    unsigned char stats_gained[8];

    if (winner->ally) {
        int level_diff = (defeated->level - winner->level < -5) ? defeated->level - winner->level : -5;
        unit_gain_exp(winner, level_diff>= 0 ? defeated->boss*30 + 8*(defeated->level - winner->level) : defeated->boss*12 + level_diff, stats_gained);
    }
    //todo remove character from screen

}

//does not check can_attack, on_self etc.
unsigned inline char unit_item_can_use(unit_t* unit, unsigned char item_no){
    register weapon_t * item = &unit->items[item_no];
    return !(item->attrs[0] & BAD_WEAPON_FLAGS) && unit->ranks[item->type] >= item->rank;
}


unsigned char unit_item_use(unit_t* unit, unsigned char item_no){
    register weapon_t * item = &unit->items[item_no];
    if (!unit_item_can_use(unit, item_no) || item->on_self) return -1; //fail
    if (weapon_has_ability(&unit->items[item_no], FULL_HEAL, unit->half_health)) unit->hp = unit->hp_b;
    else {
        if (item->heal) unit->hp = (unit->hp_b < unit->hp + item->heal) ? unit->hp_b : unit->hp + item->heal;
        if (unit->ability == EXTRA_HEAL) unit->hp = (unit->hp_b < unit->hp + 6) ? unit->hp_b : unit->hp + 6;
    }
    if (weapon_has_ability(&unit->items[item_no], BUFF_ATT, unit->half_health)) unit->att += 3;
    if (weapon_has_ability(&unit->items[item_no], BUFF_DEF, unit->half_health)) unit->def += 3;
    if (weapon_has_ability(&unit->items[item_no], BUFF_SPD, unit->half_health)) unit->spd += 3;
    if (weapon_has_ability(&unit->items[item_no], BUFF_MGC, unit->half_health)) unit->mgc += 3;
    if (weapon_has_ability(&unit->items[item_no], BUFF_RES, unit->half_health)) unit->res += 4;
    if (weapon_has_ability(&unit->items[item_no], CURE_ALL, unit->half_health)) unit->status_cond = NO_STATUS;
    if (weapon_has_ability(&unit->items[item_no], PROMOTE, unit->half_health)) {
        if (unit->class % 3 == 2) return -1;
        //promote unit
        stats_add(&unit->hp_b, &unit->hp_pg);
        ++unit->class;
        //get weapon ranks
        FILE* fp = prep_fopen(CLASS_STATS_FILENAME, "rb");
        fseek(fp, 32*unit->class, SEEK_SET);
        unsigned short ranks;
        fread(&ranks, sizeof(unsigned short), 1, fp);
        fclose(fp);
        for (unsigned char i = 0; i<WEAPON_TYPES; ++i)
            if (unit->ranks[i] < RANK_1 && ranks & WEAPON_RANK(i)) unit->ranks[i] = (unit->level << 1) + RANK_1;
    }
    
    if (!--item->uses) weapon_break(item);
    return 0;
}


void stats_set(unsigned char* restrict toSet, unsigned char* restrict values){
    for (int i = 0; i<8; ++i) *(toSet++) = *(values++);
}


//Assumes long long is 8 bytes, generally will be, slightly hacky
void stats_add(unsigned char* restrict toSet, unsigned char* restrict values){
    *(unsigned long long *)toSet += *(unsigned long long *)values;
}

void stats_zero(unsigned char* restrict toSet){
    for (int i = 0; i<8; ++i) *(toSet++) = 0;
}
