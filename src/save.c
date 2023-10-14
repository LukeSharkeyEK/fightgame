#include "save.h"
#include <stdio.h>
#include <stdlib.h>
#include "action.h"
#include "menu.h"

//todo replace fopen calls with interface to prepend filepath

settings_t settings;
game_mode_t game_mode;
save_file_t* user_data = 0;

void clear_data(){
    if (user_data) free(user_data);
}

//inits settings call before anything!!!
void settings_init(char* filepath){
    action_init(filepath);
    FILE* fp = prep_fopen(SETTINGS_FILENAME, "rb");
    fread(&settings, sizeof(settings_t), 1, fp);
    fclose(fp);
    game_mode = (game_mode_t){};
    atexit(clear_data);
}


void set_zero_growths(unsigned char param){
    game_mode.zero_growths = param;
    return opening_menu(GAME_MODES);
}

void set_hard_mode(unsigned char param){
    game_mode.hard_mode = param;
    return opening_menu(GAME_MODES);
}

void set_secrets_flag(unsigned char param){
    game_mode.secrets = param;
    return opening_menu(GAME_MODES);
}


void load_game(unsigned char save_no){
    char filename[] = SAVE_FILENAMES_PREFIX;
    filename[25] = '1'+save_no;
    user_data = malloc(sizeof(save_file_t));
    FILE* fp = prep_fopen(filename, "rb");
    fread(user_data, sizeof(save_file_t), 1, fp);
    fclose(fp);
    //todo call some void func to start game with tailcall (tailcalls are my friend)
    //start_it_all!!!
}

void new_game(unsigned char param){
    user_data = calloc(sizeof(save_file_t), 1);
    user_data->current_mode = game_mode;
    user_data->file_no = param;
    //todo the same start game function from load_game?
    //start_it_all!!!
}

void exit_game(unsigned char param){
    free(user_data);
    user_data = NULL;
    opening_menu(MAIN_MENU);
}

void save_write(save_file_t* save){
    char filename[] = SAVE_FILENAMES_PREFIX;
    filename[25] = '1'+save->file_no;
    FILE* fp = prep_fopen(filename, "wb");
    fwrite(save, sizeof(save_file_t), 1, fp);
    fclose(fp);
}

void save_game(unsigned char param){
    char filename[] = SAVE_FILENAMES_PREFIX;
    filename[25] = '1'+user_data->file_no;
    FILE* fp = prep_fopen(filename, "wb");
    fwrite(user_data, sizeof(save_file_t), 1, fp);
    fclose(fp);
}
