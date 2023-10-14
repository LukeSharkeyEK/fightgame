#include "unit_initialisation.h"
#include <stdio.h>
#include "action.h"


static FILE* class_fp;
static FILE* move_fp;

/*

class file uses this 32 (= SIZEOFLINE_T) byte struct
{
    short weapon_types;
    char weight;
    char ability;
    char bases[8];
    char growths[8];
    char promoGains[8];
    char paddingTo32Bytes[ SIZEOFLINE_T -28];
}

*/
void unit_init_stats(unit_t* restrict unit, unsigned char class, unsigned char move_type, unsigned char level){
    if (!(class_fp && move_fp)) return;
    unit->move_type = move_type;
    unit->class = class;
    fseek(class_fp, class<<5, SEEK_SET);
    unsigned short weapon_types;
    fread(&weapon_types, 2, 1, class_fp);
    fread(&unit->weight, 1, 1, class_fp);
    fread(&unit->ability, 1, 1, class_fp);
    fread(&unit->hp_b, 1, 8, class_fp);
    fread(&unit->hp_g, 1, 8, class_fp);
    fread(&unit->hp_pg, 1, 8, class_fp);
    for (int i = 0; i<WEAPON_TYPES; ++i) unit->ranks[i] = (weapon_types & WEAPON_RANK(i)) ? RANK_1+(level>>1) : 0;


    fseek(move_fp, move_type<<4, SEEK_SET);
    unsigned char add_growths[8];
    fread(&add_growths, 1, 8, move_fp);
    fread(&unit->movement, 1, 1, move_fp);
    
    //stats_add(&unit->hp_g, add_growths);
    *(unsigned long long *)&unit->hp_g += *(unsigned long long *)add_growths;

    //can use long long cast trick for quick promo gains calc,
    //cant for growths due to potential overflow (can for adding them)
    unsigned char *growth_ptr = &unit->hp_g;
    for(int i = 0; i<8; ++i) add_growths[i] = *(growth_ptr++) * level / 100;
    unsigned long long promos = (class%3)* *(long long *)(&unit->hp_pg);

    //stats_add(&unit->hp_b, add_growths);
    *(unsigned long long *)&unit->hp_b += *(unsigned long long *)add_growths;


    //stats_add(&unit->hp_b, (unsigned char *)&promos);
    *(unsigned long long *)&unit->hp_b += *(unsigned long long *)&promos;
}

void unit_data_open(){
    if (!class_fp) class_fp = prep_fopen(CLASS_STATS_FILENAME, "rb");
    if (!move_fp) move_fp = prep_fopen(MOVETYPE_STATS_FILENAME, "rb");
}

void unit_data_close(){
    if (class_fp) fclose(class_fp);
    if (move_fp) fclose(move_fp);
    class_fp = NULL;
    move_fp = NULL;
}
