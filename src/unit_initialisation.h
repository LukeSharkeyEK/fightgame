#ifndef UNIT_INITIALISATION_H_
#define UNIT_INITIALISATION_H_

#include "weapons.h"
#include "unit.h"

#define CLASS_STATS_FILENAME    "data/class_data.dat"
#define MOVETYPE_STATS_FILENAME "data/move_data.dat"


//init stats from file 
void unit_init_stats(unit_t* restrict unit, unsigned char class, unsigned char move_type, unsigned char level);
void unit_data_open();
void unit_data_close();

#endif
