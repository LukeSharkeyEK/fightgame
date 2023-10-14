#ifndef MENU_H_
#define MENU_H_



#define DYNAMIC_MENU 128

/*
    menu_name & DYNAMIC_MENU => is dynamic menu

*/
enum menu_names{

    //const menus 
    MAIN_MENU = 0,
    SETTINGS,
    BATTLE_SETTINGS,


    //dynamic menus

    /* Order matters for these 2 */
    LOAD_GAME_MENU = DYNAMIC_MENU,
    NEW_GAME_MENU,

    GAME_MODES,
    UNIT_ACTIONS,
    KEY_BINDINGS, //todo

    /* Order matters for these 4! */
    UNIT_INVENTORY_FIGHT,
    UNIT_INVENTORY_HEAL,
    UNIT_INVENTORY_GIVE,
    UNIT_INVENTORY_ITEM,

    UNIT_GIVE_FIGHT,  /* Fight after giving item */
    ITEM_MENU,
    INFO_UNIT,
    INFO_INVENTORY,
    INFO_STATS,

    


};

#define OPTION_NAME_LEN 14

typedef struct {
    char name[OPTION_NAME_LEN];
    unsigned char action;
    unsigned char param;
} option_t;

#define MENU_LABEL_DESC_LEN 12

typedef struct {
    unsigned char description[MENU_LABEL_DESC_LEN];
    unsigned char option_count;
    unsigned char is_malloc;
    unsigned char back_action;      /* action for back button pressed  */
    unsigned char back_param;  
} menu_label_t;

//128 byte
typedef struct _menu_t{
    option_t options[7];
    menu_label_t l;
} menu_t;

typedef struct {
    unsigned char action;
    unsigned char follow_up;
    unsigned char menu_name;
    unsigned char info;
} action_t;

enum actions{
    //generic
    NO_ACTION,              /* keeps user in same menu */
    POP_MENU,
    POP_ALL_MENUS,
    NEXT_MENU,              /* param = menu_no */
    OPENING_MENU,           /* creates menu in the style of main menu (param = menu no.) */
    MUTE_UNMUTE,          

    /* Gameplay settings */
    TOGGLE_ZERO_GROWTHS,    /* param 0/1 to toggle off/on */
    TOGGLE_HARD_MODE,
    TOGGLE_SECRETS,

    /* order of these 2 matters!!! */
    LOAD_GAME,              /* param = file_no indexed from 0 */
    NEW_GAME,

    EXIT_GAME,

    //my turn menu 
    INIT_MAP, 
    TO_MAP_CURSOR,      /* implicitly calls POP_ALL_MENUS */
    END_TURN,           /* implicitly calls TO_MAP_CURSOR */
    ATT_HEAL_GIVE_ITEM_MENU,    /* with ranges */
    USE_ITEM,
    ENEMY_SELECT,
    FREE_RANGE_SELECT,
    ALLY_SELECT,
    SUMMON_ACTION,
    CHEST,
    GIVE,
    RECRUIT,
    MOVE_UNIT,

    DISCARD_ITEM,

    
    

    
};


const menu_t* menu_get(unsigned char menu_num);
void att_heal_give_item_menu (unsigned char menu_num);

void pop_menu       (unsigned char param);
void pop_all_menus  (unsigned char param);
void next_menu      (unsigned char param);
void opening_menu   (unsigned char param);


#endif
