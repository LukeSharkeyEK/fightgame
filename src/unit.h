#ifndef UNIT_H_
#define UNIT_H_

#include "weapons.h"
#include "dialogue.h"

#define UNIT_INVENTORY_SIZE 5


//ensure hp == 0 and x_pos = 255 for defeated units
typedef struct _unit_t{
//todo
//CHANGE VOID POINTER TYPE ONCE IMPLEMENTED
    weapon_t items[UNIT_INVENTORY_SIZE];
    void* image_data;
    dialogue_t* dialogue_data;
    struct _unit_t * carrying;
    char name[12];


//maybe?
//0 = enemy, 1 = player controlled, 2 = ally but not in party
    unsigned char ally;
    unsigned char recruitable;
    unsigned char boss;

//helpful flag
    unsigned char half_health;


    //x_pos == -1 (255) for not on map
    unsigned char move_type;
    unsigned char movement;
    unsigned char x_pos;
    unsigned char y_pos;
    unsigned char to_move;
    unsigned char status_cond;
    unsigned char class;
    unsigned char weight;
//temp stats in current battle
    unsigned char hp;
    unsigned char att;
    unsigned char def;
    unsigned char spd;
    unsigned char mgc;
    unsigned char res;
    unsigned char skl;
    unsigned char lck;
//actual base stats
    unsigned char hp_b;
    unsigned char att_b;
    unsigned char def_b;
    unsigned char spd_b;
    unsigned char mgc_b;
    unsigned char res_b;
    unsigned char skl_b;
    unsigned char lck_b;
//growths
    unsigned char hp_g;
    unsigned char att_g;
    unsigned char def_g;
    unsigned char spd_g;
    unsigned char mgc_g;
    unsigned char res_g;
    unsigned char skl_g;
    unsigned char lck_g;
//promo growths
    unsigned char hp_pg;
    unsigned char att_pg;
    unsigned char def_pg;
    unsigned char spd_pg;
    unsigned char mgc_pg;
    unsigned char res_pg;
    unsigned char skl_pg;
    unsigned char lck_pg;


    unsigned char exp;
    unsigned char level;
//weapon ranks
//WEAPON_TYPES = 13
    unsigned char ranks[WEAPON_TYPES];
    unsigned char ability;
    

//96 bytes so far
//+160 for weapons = 256 bytes
} unit_t;

typedef struct {
    unsigned char att_hit;
    unsigned char att_dmg;
    unsigned char att_crit;
    unsigned char att_no_of_hits;
    unsigned char def_hit;
    unsigned char def_dmg;
    unsigned char def_crit;
    unsigned char def_no_of_hits;
    unsigned char att_follow_up;
    unsigned char def_follow_up;
    unsigned char def_first;
    unsigned char counter;
} battle_forecast_t;

//FUNCS

void init_unit_file(char* filepath);

//ptrs should be pointer to hp stat, values should be pointer to 8 char values
void stats_set(unsigned char* restrict toSet, unsigned char* restrict values);
void stats_add(unsigned char* restrict toSet, unsigned char* restrict values);
void stats_zero(unsigned char* restrict toSet);

void unit_init_map(unit_t * restrict unit);
char unit_gain_exp(unit_t * restrict unit, unsigned char exp, unsigned char * restrict stats_gained);

void unit_copy(unit_t* restrict dest, const unit_t* restrict src);

void unit_equip_item(unit_t* restrict unit, unsigned char item_no);
void unit_discard_equipped(unit_t* restrict unit);
unsigned inline char unit_item_can_use(unit_t* unit, unsigned char item_no);
unsigned char unit_item_use(unit_t* unit, unsigned char item_no); //returns 0 on success and 255 on fail


void unit_get_forecast(battle_forecast_t* forecast, const unit_t* attacker, const unit_t* defender, unsigned char distance);
unsigned char unit_get_hit(const unit_t* restrict attacker, const unit_t* restrict defender);
unsigned char unit_get_dmg(const unit_t* restrict attacker, const unit_t* restrict defender, unsigned char effective);
unsigned char unit_get_crit(const unit_t* restrict attacker, const unit_t* restrict defender, unsigned char effective);
void unit_run_forecast(battle_forecast_t* forecast, unit_t* attacker, unit_t* defender);
unsigned char unit_attack(unit_t* restrict attacker, unit_t* restrict defender, unsigned char hit, unsigned char dmg, unsigned char crit);
void unit_defeated(unit_t* restrict winner, unit_t* restrict defeated); //todo



//use unsigned char (safe)
enum ability{
    NO_ABILITY,
    STATUS_IMMUNE,
    IGNORE_ALL,
    INVINCIBLE,
    CRIT_IMMUNE,
    BOW_RANGE_PLUS,
    WARY_FIGHTER,
    LOCKPICK,
    EXTRA_HEAL,
    EXTRA_CRIT,
    SUMMON,
    SUMMONED,
    TELEPORT,
    ALWAYS_HIT,
    IMMORTAL_A,
    COUNTER_ALL,
    REVITALISE,
    EFFECTIVE_IMMUNE,
};

enum status{
    NO_STATUS   = 0,
    POISON      = 1<<0,
    FREEZE      = 1<<1,
    SILENCE     = 1<<2,
    WEAK        = 1<<3,
    CAN_PASS    = 1<<4,
};

enum movetype{
    INFANTRY    = 0,
    CAVALRY     = 1,
    ARMOURED    = 2,
    FLYING      = 3,
};

enum classes{
    DAGGER_LORD_1,
    DAGGER_LORD_2,
    DAGGER_LORD_3,
    LANCE_LORD_1,
    LANCE_LORD_2,
    LANCE_LORD_3,
    AXE_LORD_1,
    AXE_LORD_2,
    AXE_LORD_3,
    LIGHT_LORD_1,
    LIGHT_LORD_2,
    LIGHT_LORD_3,
    DARK_LORD_1,
    DARK_LORD_2,
    DARK_LORD_3,
    STAFF_LORD_1,
    STAFF_LORD_2,
    STAFF_LORD_3,
    VILLAGER,
    CHIEF,
    LEADER,
    FIGHTER,
    WARRIOR,
    HERO,
    THIEF,
    NINJA,
    ASSASSIN,
    DRAGON_L,
    LIGHT_DRAGON,
    MAGIC_DRAGON,
    DRAGON_D,
    DARK_DRAGON,
    DOOM_DRAGON,
    LIGHT_MAGE,
    MAGICIAN,
    SORCERER,
    DARK_MAGE_M,
    WIZARD,
    GREAT_WIZARD,
    DARK_MAGE_F,
    WITCH,
    GREAT_WITCH,
    BALLISTICIAN1,
    BALLISTICIAN2,
    BALLISTICIAN3,
    HEALER,
    DIVINE,
    SHAMAN,
    THUG,
    BRIGAND,
    VIKING,
    ARCHER,
    RANGER,
    SNIPER,
    SOLDIER,
    PIKEMAN,
    HALBERDIER,
    AXEMAN,
    BRUTE,
    FIERCEMAGE,
    BRAWLER,
    BRUISER,
    MELEEMASTER,
    UNDERDOG,
    PUPIL,
    SAGE,
    UNKNOWN1,
    UNKNOWN2,
    UNKNOWN3,
    COMMANDER1,
    COMMANDER2,
    COMMANDER3,
    KING,
    DEMON,
    IMMORTAL,
    DANCER,
    PERFORMER,
    STAR,
    GHOUL,
    GREAT_GHOUL,
    MASTER_GHOUL,
    PHANTOM_RIDER,
    HEADLESS_HORSEMAN,
    REAPER,
    SEEKER,
    CURSED_SEEKER,
    DEATH_SEEKER,
    TRICKSTER,
    JESTER,
    CONMASTER,
    SUMMONER1,
    SUMMONER2,
    SUMMONER3,
    SUMMONED1,
    SUMMONED2,
    SUMMONED3
    
};

#endif
