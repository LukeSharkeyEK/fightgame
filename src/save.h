#ifndef SAVE_H_
#define SAVE_H_

#include "unit.h"
#include "weapons.h"


#define SAVE_FILES  6       /* MAX = 7 */
#define SAVE_FILENAMES_PREFIX   "data/user_data/save_data_X.dat"    
#define SETTINGS_FILENAME       "data/user_data/settings.dat"
#define REL_SAVE_FILENAME_PFX   "save_data_X.dat"   /* 16 byte string to edit char [10] of (the X) */
#define REL_SETTINGS_FILENAME   "settings.dat"

#define ALLY_COUNT      12
#define SUMMON_ID       ALLY_COUNT-1
#define INVENTORY_SIZE  50

#define ALLY(x)         user_data->allies[x]


typedef struct {
    unsigned char zero_growths;
    unsigned char hard_mode;
    unsigned char secrets;
} game_mode_t;

typedef struct {
    unsigned char saves_exist[SAVE_FILES];
    unsigned char mute;
    unsigned char across_plays_data;
    unsigned char secrets_unlocked;
} settings_t;

typedef struct {
    unit_t allies[ALLY_COUNT]; 
    weapon_t inventory[INVENTORY_SIZE];
    game_mode_t current_mode;
    unsigned char file_no;      /* indexed from 0, save_data_1.dat is represented by 0 */
    unsigned char money;
    unsigned char path_chosen;
    unsigned char map_no;
    unsigned char secret_check;
    unsigned int progress;
} save_file_t;


/* INIT ME!!!! */
void settings_init(char* filepath);
void save_write(save_file_t* save);


/* Menu actions */
void set_zero_growths   (unsigned char param);
void set_hard_mode      (unsigned char param);
void set_secrets_flag   (unsigned char param);


void load_game(unsigned char save_no);
void new_game (unsigned char save_no);
void exit_game(unsigned char param);
void save_game(unsigned char param);


extern settings_t settings;
extern game_mode_t game_mode;
extern save_file_t* user_data;

#endif
