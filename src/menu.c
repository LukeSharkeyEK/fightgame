#include "menu.h" 
#include "save.h"
#include "action.h"
#include "battle.h"
#include "unit.h"
#include <stdlib.h>
#include <string.h>


void att_heal_give_item_menu (unsigned char menu_no);

/*
    Format:
        7 options (String, Action, arg for action),
        Number of options,
        is_malloc - false for const_menus
        back button action
        back button action param
*/
const menu_t const_menus[] = {
    //MAIN_MENU
    (menu_t){
        (option_t) {"Load Game",    OPENING_MENU,   LOAD_GAME_MENU,},
        (option_t) {"New Game!",    OPENING_MENU,   NEW_GAME_MENU,},
        (option_t) {"Settings",     OPENING_MENU,   SETTINGS,},
        (option_t){0}, (option_t){0}, (option_t){0}, (option_t){0},
        3, 0, NO_ACTION, 0,
    },

    //SETTINGS
    (menu_t){
        (option_t) {"Mute",         MUTE_UNMUTE,    0,},
        (option_t) {"Game Modes",   GAME_MODES,     0,},
        (option_t) {"Key Bindings", },
        (option_t) {"Back",         OPENING_MENU,   MAIN_MENU,},
        (option_t){0}, (option_t){0}, (option_t){0}, 
        4, 0, OPENING_MENU, MAIN_MENU,
    },

    //BATTLE SETTINGS todo
    (menu_t){
        (option_t) {"Mute",         MUTE_UNMUTE,    0,},
        (option_t) {"Quit Game",    EXIT_GAME,      0,},
        (option_t) {"Back",         TO_MAP_CURSOR,  0,},
        (option_t){0}, (option_t){0}, (option_t){0}, (option_t){0}, 
        3, 0, 0, 0,
    },

};


//set is_malloc = 1 for generated menus
const menu_t* menu_get(unsigned char menu_num){
    if (!(menu_num & DYNAMIC_MENU)) return &const_menus[menu_num];
    menu_t* menu = calloc(1, sizeof(menu_t));
    int i = 0;

    switch (menu_num) {
        case LOAD_GAME_MENU: case NEW_GAME_MENU:
            for (i = 0; i<SAVE_FILES; i++) {
                menu->options[i] = (option_t){"Empty Save", menu_num-LOAD_GAME_MENU+LOAD_GAME, i,};
                if (settings.saves_exist[i]) menu->options[i] = 
                    (option_t) {'S', 'a', 'v', 'e', ' ', '1'+i, 0, 0, 0, 0, 0, 0, 0, 0, menu_num-LOAD_GAME_MENU+LOAD_GAME, i,};
            }
            menu->l = (menu_label_t){"Choose file", SAVE_FILES, 1, OPENING_MENU, MAIN_MENU,};
            break;

        case GAME_MODES:
            menu->options[0] = (option_t){"Growths (On)", TOGGLE_ZERO_GROWTHS, 1,};
            if (game_mode.zero_growths)
                menu->options[0] = (option_t){"Growths (Off)", TOGGLE_ZERO_GROWTHS, 0,};
            menu->options[1] = (option_t){"Normal Mode", TOGGLE_ZERO_GROWTHS, 1,};
            if (game_mode.hard_mode)
                menu->options[1] = (option_t){"HARD MODE", TOGGLE_ZERO_GROWTHS, 0,};
            menu->options[2] = (option_t){"???", NO_ACTION, 0,};
            if (settings.secrets_unlocked)
                menu->options[2] = (option_t){"No Secrets", TOGGLE_SECRETS, 1,};
            if (game_mode.secrets)
                menu->options[2] = (option_t){"Secrets!", TOGGLE_SECRETS, 0,};
            menu->options[3] = (option_t){"New Game!", OPENING_MENU, NEW_GAME_MENU};
            menu->options[4] = (option_t){"Back (Saves)", OPENING_MENU, MAIN_MENU,};
            menu->l = (menu_label_t){"Game Modes", 5, 1, OPENING_MENU, MAIN_MENU,};
            break;

        case UNIT_ACTIONS:
            menu->options[i++] = (option_t){"Fight", ATT_HEAL_GIVE_ITEM_MENU, UNIT_INVENTORY_FIGHT,};
            menu->options[i++] = (option_t){"Heal",  ATT_HEAL_GIVE_ITEM_MENU, UNIT_INVENTORY_HEAL,};
            menu->options[i++] = (option_t){"Item",  ATT_HEAL_GIVE_ITEM_MENU, UNIT_INVENTORY_ITEM,};
            if (unit_selected != SUMMON_ID)
                menu->options[i++] = (option_t){"Give", ALLY_SELECT, UNIT_INVENTORY_GIVE,};
            else if (ALLY(unit_selected).ability == LOCKPICK)
                menu->options[i++] = (option_t){"Lockpick", CHEST, 0,};
            else if (ALLY(unit_selected).ability == SUMMON) {
                menu->options[i++] = (option_t){"Summon", SUMMON_ACTION, 0,};
            }
            menu->l = (menu_label_t){"Actions", i, 1, MOVE_UNIT, 0,};
            break;

        case UNIT_INVENTORY_FIGHT: 
            //5 = inventory size
            for (i=0; i<UNIT_INVENTORY_SIZE; ++i) {
                if (ALLY(unit_selected).items[i].attrs[0] == IS_NOTHING_FLAG) break;
                if (ALLY(unit_selected).items[i].rank >
                    ALLY(unit_selected).ranks[ALLY(unit_selected).items[i].type]) {
                        menu->options[i] = (option_t){"Cannot use", NO_ACTION, 0,};
                } else if (ALLY(unit_selected).items[i].can_attack) {
                    strncpy((char *)&menu->options[i].name, (char *)&ALLY(unit_selected).items[i].name, OPTION_NAME_LEN);
                    menu->options[i].action = ENEMY_SELECT;
                    menu->options[i].param = 0;
                } else menu->options[i] = (option_t){"Not a weapon", NO_ACTION, 0,};
            }
            menu->options[i++] = (option_t){"Back", NEXT_MENU, UNIT_ACTIONS};
            menu->l = (menu_label_t){"<- Attack ->", i, 1, NEXT_MENU, UNIT_ACTIONS};
            break;

        case UNIT_INVENTORY_HEAL: 
            for (i =0; i<UNIT_INVENTORY_SIZE; ++i) {
                if (ALLY(unit_selected).items[i].attrs[0] == IS_NOTHING_FLAG) break;
                if (ALLY(unit_selected).items[i].rank > ALLY(unit_selected).ranks[ALLY(unit_selected).items[i].type]) {
                    menu->options[i] = (option_t){"Cannot use", NO_ACTION, 0,};
                } else if (ALLY(unit_selected).items[i].at_allies) {
                    strncpy((char *)&menu->options[i].name, (char *)&ALLY(unit_selected).items[i].name, OPTION_NAME_LEN);
                    menu->options[i].action = ALLY_SELECT;
                    menu->options[i].param = 0;
                } else menu->options[i] = (option_t){"Not for allies", NO_ACTION, 0,};
            }
            menu->options[i++] = (option_t){"Back", NEXT_MENU, UNIT_ACTIONS};
            menu->l = (menu_label_t){"<-  Heal  ->", i, 1, NEXT_MENU, UNIT_ACTIONS};
            break;

        case UNIT_INVENTORY_GIVE: 
            for (i =0; i<UNIT_INVENTORY_SIZE; ++i) {
                if (ALLY(unit_selected).items[i].attrs[0] == IS_NOTHING_FLAG) break;
                if (ALLY(unit_selected).items[i].rank > ALLY(unit_selected).ranks[ALLY(unit_selected).items[i].type]) {
                    menu->options[i] = (option_t){"Cannot use", NO_ACTION, 0,};
                } else if (ALLY(unit_selected).items[i].uses == PERSONAL_WEAPON) {
                    menu->options[i] = (option_t){"Cannot give", NO_ACTION, 0,};
                } else {
                    strncpy((char *)&menu->options[i].name, (char *)&ALLY(unit_selected).items[i].name, OPTION_NAME_LEN);
                    menu->options[i].action = GIVE;
                    menu->options[i].param = 0;
                }
            }
            menu->options[i++] = (option_t){"Back", NEXT_MENU, UNIT_ACTIONS};
            menu->l = (menu_label_t){"<-  Give  ->", i, 1, NEXT_MENU, UNIT_ACTIONS};
            break;

        case UNIT_INVENTORY_ITEM: 
            for (i =0; i<UNIT_INVENTORY_SIZE; ++i) {
                if (ALLY(unit_selected).items[i].attrs[0] == IS_NOTHING_FLAG) break;
                strncpy((char *)&menu->options[i].name, (char *)&ALLY(unit_selected).items[i].name, OPTION_NAME_LEN);
                menu->options[i].action = NEXT_MENU;
                menu->options[i].param = ITEM_MENU;
            }
            menu->options[i++] = (option_t){"Back", NEXT_MENU, UNIT_ACTIONS};
            menu->l = (menu_label_t){"<-  Item  ->", i, 1, NEXT_MENU, UNIT_ACTIONS};
            break;

        case UNIT_GIVE_FIGHT: 
            //5 = inventory size
            for (i =0; i<UNIT_INVENTORY_SIZE; ++i) {
                if (ALLY(unit_selected).items[i].attrs[0] == IS_NOTHING_FLAG) break;
                if (!ALLY(unit_selected).items[i].can_attack) {
                    menu->options[i] = (option_t){"Not a weapon", NO_ACTION, 0,};
                } else if (ALLY(unit_selected).items[i].rank >
                    ALLY(unit_selected).ranks[ALLY(unit_selected).items[i].type]) {
                        menu->options[i] = (option_t){"Cannot use", NO_ACTION, 0,};
                } else {
                    strncpy((char *)&menu->options[i].name, (char *)&ALLY(unit_selected).items[i].name, OPTION_NAME_LEN);
                    menu->options[i].action = ENEMY_SELECT;
                    menu->options[i].param = 1; //1 = cannot go back
                }
            }
            menu->options[i++] = (option_t){"End Turn", END_TURN, 0};
            menu->l = (menu_label_t){"<- Attack ->", i, 1, END_TURN, 0};
            break;

        case ITEM_MENU:
            menu->options[0] = (option_t){"Use", USE_ITEM, 0,};
            if (ALLY(unit_selected).items[0].rank > ALLY(unit_selected).ranks[ALLY(unit_selected).items[0].type] ||
                !ALLY(unit_selected).items[0].on_self)
                    menu->options[0] = (option_t){"Not Usable", NO_ACTION, 0,};
            menu->options[1]=  (option_t){"Discard", DISCARD_ITEM, 0,};
            if (ALLY(unit_selected).items[0].uses == PERSONAL_WEAPON)
                menu->options[1] = (option_t){"Cannot Discard", NO_ACTION, 0};
            menu->options[2] = (option_t){"Back", ATT_HEAL_GIVE_ITEM_MENU, UNIT_INVENTORY_ITEM};
            menu->l = (menu_label_t){"Equipped!", 3, ATT_HEAL_GIVE_ITEM_MENU, UNIT_INVENTORY_ITEM,};
            break;

        default:
            free(menu);
            return NULL;
    }
    return menu;
}

void (*action_ptrs[]) (unsigned char) = {
    NULL,                   /* NO ACTION */
    pop_menu,               /* POP MENU */
    pop_all_menus,          /* POP ALL MENUS */
    next_menu,              /* NEXT MENU */
    opening_menu,           /* OPENING MENU */
    toggle_volume,          /* MUTE UNMUTE */

    set_zero_growths,       /* TOGGLE ZERO GROWTHS */
    set_hard_mode,          /* TOGGLE HARD MODE */
    set_secrets_flag,       /* TOGGLE SECRETS */

    load_game,              /* LOAD GAME */
    new_game,               /* SAVE GAME */
    exit_game,              /* EXIT GAME */
    
    init_map,               /* INIT MAP */
    to_map_cursor,          /* TO MAP CURSOR */
    end_turn,               /* END TURN */
    att_heal_give_item_menu,/* ATT HEAL GIVE ITEM MENU */
                            /* USE ITEM */
                            /* ENEMY SELECT */
                            /* FREE RANGE SELECT */
                            /* ALLY SELECT */
                            /* SUMMON ACTION */
    open_chest,             /* CHEST */
                            /* GIVE */
                            /* RECRUIT */
    move_unit,              /* MOVE UNIT */
    discard_item            /* DISCARD ITEM */

};


/* param = menu_num */
void opening_menu(unsigned char param){
    unsigned char selected = 0;
    const menu_t* menu = menu_get(param);
    /* todo display opening menu */

    unsigned char next_action;
    unsigned char next_action_param;
    while(1) {
        char input = read_char();
        if (input == key_map.K_UP) {
            if (!selected) selected = menu->l.option_count;
            --selected;
        } else if (input == key_map.K_DOWN || input == key_map.K_NEXT) {
            if (++selected == menu->l.option_count) selected = 0;
        } else if (input == key_map.K_YES && menu->options[selected].action) {
            next_action = menu->options[selected].action;
            next_action_param = menu->options[selected].param;
            break;
        } else if (input == key_map.K_NO && menu->l.back_action) {
            next_action = menu->l.back_action;
            next_action_param = menu->l.back_param;
            break;
        }
        /* todo update menu arrow for up or down, could have 1 update menu function in loop */
    }
    if (menu->l.is_malloc) free((void*)menu);
    return (action_ptrs[next_action]) (next_action_param);
}


/* param = menu_num */
void next_menu(unsigned char param){
    unsigned char selected = 0;
    const menu_t* menu = menu_get(param);
    /* todo display menu */

    unsigned char next_action;
    unsigned char next_action_param;
    while(1) {
        char input = read_char();
        if (input == key_map.K_UP) {
            if (!selected) selected = menu->l.option_count;
            --selected;
        } else if (input == key_map.K_DOWN || input == key_map.K_NEXT) {
            ++selected;
            if (selected == menu->l.option_count) selected = 0;
        } else if (input == key_map.K_YES) {
            next_action = menu->options[selected].action;
            next_action_param = menu->options[selected].param;
            break;
        } else if (input == key_map.K_NO) {
            next_action = menu->l.back_action;
            next_action_param = menu->l.back_param;
            break;
        }
        /* todo update menu arrow for up or down */
    }
    if (menu->l.is_malloc) free((void*)menu);
    return (action_ptrs[next_action]) (next_action_param);
}



//USE LEFT AND RIGHT KEYS TO SWITCH BETWEEN ATTACK HEAL USE ITEM GIVE
/* param = menu_num */
/* We know these are all malloc menus! */
void att_heal_give_item_menu(unsigned char menu_no){
    unsigned char selected = 0;
    const menu_t* menu = menu_get(menu_no);
    /* todo display */
    unsigned char next_action;
    unsigned char next_action_param;
    while(1) {
        char input = read_char();
        if (input == key_map.K_UP) {
            if (!selected) selected = menu->l.option_count;
            --selected;
        } else if (input == key_map.K_DOWN || input == key_map.K_NEXT) {
            if (++selected == menu->l.option_count) selected = 0;
        } else if (input == key_map.K_YES && menu->options[selected].action) {
            unit_equip_item(&ALLY(unit_selected), selected);
            next_action = menu->options[selected].action;
            next_action_param = menu->options[selected].param;
            break;
        } else if (input == key_map.K_NO && menu->l.back_action) {
            next_action = menu->l.back_action;
            next_action_param = menu->l.back_param;
            break;
        } else if (input == key_map.K_LEFT) {
            free((void*)menu);
            if (--menu_no < UNIT_INVENTORY_FIGHT) menu_no = UNIT_INVENTORY_ITEM;
            menu_get(menu_no);
        } else if (input == key_map.K_RIGHT) {
            free((void*)menu);
            if (++menu_no > UNIT_INVENTORY_ITEM) menu_no = UNIT_INVENTORY_FIGHT;
            menu_get(menu_no);
        } else if (input == key_map.K_INFO) {
            //todo something for info
        }
        /* update ranges also */
        /* todo update menu arrow for up or down, could have 1 update menu function in loop */
    }
    unit_equip_item(&ALLY(unit_selected), selected);
    free((void*)menu);
    return (action_ptrs[next_action]) (next_action_param);
}


