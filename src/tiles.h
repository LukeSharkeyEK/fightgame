#ifndef TILES_H_
#define TILES_H_


//80*8 
#define MAX_TILES       500

typedef struct {
    //from tile_set
    unsigned char type;
    //0 unbreakable
    unsigned char current_hp;
} tile_t;

typedef struct {
    //from tile_set
    unsigned char type;
    //0 for unbreakable
    unsigned char default_hp;
    unsigned char heal;
    unsigned char avoid;
    //pass_effort[INFANTRY] == movement used when passing for INFANTRY,
    //-1 for cant pass
    unsigned char pass_effort[4];
} tile_info_t;


/* tile x y = tiles[x + width*y]  */
/* tile 0 0 = bottom left */
/* todo update enemy/boss count */
typedef struct {
    unsigned char height;
    unsigned char width;
    unsigned char win_cond;
    unsigned char max_turns;
    unsigned char turn_no;
    unsigned char t_enemy_count;
    unsigned char t_boss_count;
    unsigned char t_ally_count;
    tile_t tiles[MAX_TILES];
} map_info_t;


#define IS_HIDDEN   128
#define IS_LIQUID   64
#define TILE_NUM    63

/* if (tile_set & IS_HIDDEN) tile is dark */
/* (tile_set & IS_LIQUID) to test */
enum tile_set{
    OOB,
    GRASS,
    RIVER,
    OCEAN,
    ICE,
    MOUNTAIN,
    PATH,
    WALL,
    CRACKED_WALL,
    TWIG,
    WOOD_PATCH,
    FOREST,
    FORT,
    THRONE,
    SWAMP,
    SWAMP_ICE,
    HILL,
    CHEST_LOCKED,
    CHEST_OPENED,
    SHOP,

    /* must be last */
    TILE_COUNT,
};

enum win_conds{
    SURVIVE,
    ROUTE,
    DEFEAT_BOSSES,
    ESCAPE,
};


/* land should have to draw over all water and connect if touching */
/* could draw land last? */
enum touching_liquid {
    L_LEFT          = 1<<0,
    L_RIGHT         = 1<<1,
    L_UP            = 1<<2,
    L_DOWN          = 1<<3,
    L_LEFT_UP       = 1<<4,
    L_LEFT_DOWN     = 1<<5,
    L_RIGHT_UP      = 1<<6,
    L_RIGHT_DOWN    = 1<<7,
};

void get_movement(const map_info_t* map_info, unsigned char* move_data, unsigned char move_type, unsigned char movement, unsigned char x, unsigned char y);
unsigned char is_touching_liquid(const map_info_t* info, unsigned char x, unsigned char y);



extern map_info_t map_info;

#endif