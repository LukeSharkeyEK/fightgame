#ifndef WEAPONS_H_
#define WEAPONS_H_


//add 128 to make an ability only at low health

#define AT_LOW_HEALTH       128
#define BAD_WEAPON_FLAGS    64
#define WEAPON_TYPES        13


/*
Rules:
    (weapon_attr&&128) means ability only happens when hp<50%


*/
enum weapon_attr{
    NO_WEAPON_ATTR,

//effective against
    E_SWORD,
    E_AXE,
    E_LANCE,
    E_BOW,
    E_BREATH,
    E_DAGGER,
    E_GAUNTLET,
    E_STAFF,
    E_LIGHT_M,
    E_DARK_M,
    E_HEAVY, //unlikely to be used
    E_EXPLOSIVE,
    
    E_INFANTRY,
    E_CAVALRY,
    E_ARMOUR,
    E_FLYING,

//apply status (only 1 applies)

    APP_POISON,
    APP_WEAK,
    APP_FREEZE,
    APP_SILENCE,
    DEBUFF_DEF1,
    DEBUFF_DEF2,
    DEBUFF_DEF3,

//staff buffs/item buffs

    AGAIN,
    BUFF_ATT,
    BUFF_DEF,
    BUFF_SPD,
    BUFF_MGC,
    BUFF_RES,
    BUFF_MOV, //remove me!!! todo
    FULL_HEAL,
    WARP,
    RESCUE,
    APP_PASS,
    CURE_ALL,
    PROMOTE, //maybe
        //set abilities
    GET_,

//attack order
  
    FRENZY, // attacks twice for every one attack
    SLOW,   // cannot follow up attack
    FAST,
    QUICK_DRAW, //attacks first when opponent initiates
    SLOW_DRAW,
    FURY, //follow up attacks are immediate

//designed for <%50 hp

    CRIT_UP,
    ATT_UP,
    

//misc.
    
    COUNTER_INF_RANGE,
    IGNORE_DEF,
    CORROSION,
    SAP_HEALTH,
    GLOBAL_ATTACK, //NO COUNTERATTACK?
    SPLASH,
    TERRAIN_WARP,
    TERRAIN_WARP_SWAMP,
    SET_HP_TO_1, //COMBINE WITH CANNOT CRIT!!!
    CANNOT_CRIT,
    CANNOT_COUNTER,
    WINDSWEEP, //todo add to counter calc

    IS_NOTHING_FLAG = BAD_WEAPON_FLAGS,
    IS_BROKEN_FLAG,

};


#define UNBREAKABLE     255
#define PERSONAL_WEAPON 254
//todo check for magic numbers for guaranteed to hit and is_magic



/*
name            - name of weapon
uses            - number of uses left, breaks when reaches 0
                  (uses == -1) if infinite
                  (uses == -2) if personal weapon (cannot trade)
str             - (str && 127) == attack power
                  (str && 128) if magic weapon
acc             - (acc && 127) == accuracy%
                - (acc && 128) if guaranteed to hit
crit            - critical hit chance%
weight          - weight of weapon
min_range       - min_range of weapon
max_range       - max_range of weapon
heal            - amount healed if used (staves or items)
type            - weapon type from weapon_type enum
rank            - weapon rank needed to use (multiples of 32 from 0 to 160)
on_self         - can be used on self
at_allies       - can be used on allies
can_attack      - can be used on enemies
attrs           - attributes from attrs enum
dropped         - enemy gives this to player on defeat
            
sizeof = 31/32 bytes
*/
typedef struct {
    char name[14];
    unsigned char uses;
    unsigned char str;
    unsigned char acc;
    unsigned char crit;
    unsigned char weight;
    unsigned char min_range;
    unsigned char max_range;
    unsigned char heal;
    unsigned char type;
    unsigned char rank;
    unsigned char on_self;
    unsigned char at_allies;
    unsigned char can_attack;
    unsigned char attrs[3];
    unsigned char dropped;
    unsigned char padding;
} weapon_t;


//use unsigned char (is safe)
enum weapon_type{
    ITEM     = 0,
    SWORD    = 1,
    AXE      = 2,
    LANCE    = 3,
    BOW      = 4,
    BREATH   = 5,
    DAGGER   = 6,
    GAUNTLET = 7,
    STAFF    = 8,
    LIGHT_M  = 9,
    DARK_M   = 10,
    HEAVY    = 11,
    EXPLOSIVE= 12,
    
};

#define WEAPON_RANK(n) n<<5
//multiples of 32
enum {
    NO_RANK = WEAPON_RANK(0),
    RANK_1  = WEAPON_RANK(1),
    RANK_2  = WEAPON_RANK(2),
    RANK_3  = WEAPON_RANK(3),
    RANK_4  = WEAPON_RANK(4),
    RANK_5  = WEAPON_RANK(5),
};


unsigned char weapon_has_ability(const weapon_t* weapon, unsigned char ability, unsigned char half_hp);

void fp_set();
void fp_close();
void get_weapon(weapon_t* weapon, unsigned char weapon_num);
//todo
void weapon_break(weapon_t* weapon);

#endif
