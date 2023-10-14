
#include "weapons.h"
#include <stdio.h>

#define WEAPON_DATA_FILENAME "data/weapon_data.dat"

static FILE* fp = NULL;



unsigned char weapon_has_ability(const weapon_t* weapon, unsigned char ability, unsigned char half_hp){
    return ((half_hp  || !(ability & 128)) && (weapon->attrs[0] == ability || weapon->attrs[1] == ability || weapon->attrs[2] == ability));
}



//These function calls do very little, potentially move to where they are called in future
    //functions are get_weapon, fp_set and fp_close
void get_weapon(weapon_t* weapon, unsigned char weapon_num){
    if (!fp) fp_set();
    fread(weapon, sizeof(weapon_t), 1, fp);
}

void fp_set(){
    fp = fopen(WEAPON_DATA_FILENAME, "rb");
}

void fp_close(){
    fclose(fp);
    fp = NULL;
}
