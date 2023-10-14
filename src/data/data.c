//THIS IS FOR CREATING THE BINARY DATA FILE WITH INFO ON CLASSES, ACCESS INFO ON CLASSES THROUGH THAT FILE AND NOT THIS DIRECTLY
//compile with action.c

//todo
//GIVE SOLDIER SOMETHING GOOD/BETTER

#include "../weapons.h"
#include "../unit.h"
#include "../action.h"
#include <stdio.h>

#define CLASS_FILENAME "class_data.dat"
#define CLASSES_COUNT  96
#define SIZEOFLINE_T   32

#define MOVETYPE_FILENAME "move_data.dat"




int main(int argc, char* argv[]);
unsigned char abilities[];


typedef struct {
    short weapon_types;
    char weight;
    char ability;
    char bases[8];
    char growths[8];
    char promoGains[8];
    char paddingTo32Bytes[ SIZEOFLINE_T -28];
} line_t;





enum class{
    DAGGER_LORD,
    DAGGER_LORD2,
    DAGGER_LORD3,
    LANCE_LORD,
    LANCE_LORD2,
    LANCE_LORD3,
    AXE_LORD,
    AXE_LORD2,
    AXE_LORD3,
    LIGHT_LORD,
    LIGHT_LORD2,
    LIGHT_LORD3,
    DARK_LORD,
    DARK_LORD2,
    DARK_LORD3,
    STAFF_LORD,
    STAFF_LORD2,
    STAFF_LORD3,
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


unsigned short weapons[] = {
    //DAGGERLORD
    (1<<DAGGER) + (1<<SWORD) + (1<<ITEM),
    (1<<DAGGER) + (1<<SWORD) + (1<<HEAVY) + (1<<ITEM),
    (1<<DAGGER) + (1<<SWORD) + (1<<HEAVY) + (1<<GAUNTLET) + (1<<ITEM),
    //LANCE_LORD
    (1<<LANCE) + (1<<SWORD) + (1<<ITEM),
    (1<<LANCE) + (1<<SWORD) + (1<<HEAVY) + (1<<ITEM),
    (1<<LANCE) + (1<<SWORD) + (1<<HEAVY) + (1<<GAUNTLET) + (1<<ITEM),
    //AXE_LORD
    (1<<AXE) + (1<<SWORD) + (1<<ITEM),
    (1<<AXE) + (1<<SWORD) + (1<<HEAVY) + (1<<ITEM),
    (1<<AXE) + (1<<SWORD) + (1<<HEAVY) + (1<<GAUNTLET) + (1<<ITEM),
    //LIGHT_LORD
    (1<<LIGHT_M) + (1<<BOW) + (1<<ITEM),
    (1<<LIGHT_M) + (1<<BOW) + (1<<HEAVY) + (1<<ITEM),
    (1<<LIGHT_M) + (1<<BOW) + (1<<HEAVY) + (1<<SWORD) + (1<<ITEM),
    //DARK_LORD
    (1<<DARK_M) + (1<<BOW) + (1<<ITEM),
    (1<<DARK_M) + (1<<BOW) + (1<<HEAVY) + (1<<ITEM),
    (1<<DARK_M) + (1<<BOW) + (1<<HEAVY) + (1<<SWORD) + (1<<ITEM),
    //STAFF_LORD
    (1<<STAFF) + (1<<BOW) + (1<<ITEM),
    (1<<STAFF) + (1<<BOW) + (1<<HEAVY) + (1<<ITEM),
    (1<<STAFF) + (1<<BOW) + (1<<HEAVY) + (1<<SWORD) + (1<<ITEM),
    //VILLAGER, CHIEF, LEADER
    (1<<SWORD) + (1<<ITEM),
    (1<<SWORD) + (1<<STAFF) + (1<<ITEM),
    (1<<SWORD) + (1<<STAFF) + (1<<HEAVY) + (1<<ITEM),
    //FIGHTER, WARRIOR, HERO
    (1<<AXE) + (1<<ITEM),
    (1<<AXE) + (1<<BOW) & (1<<ITEM),
    (1<<SWORD) + (1<<AXE) + (1<<LANCE) + (1<<BOW) + (1<<ITEM),
    //THIEF NINJA ASSASSIN
    (1<<SWORD) + (1<<DAGGER) + (1<<ITEM),
    (1<<SWORD) + (1<<DAGGER) + (1<<ITEM),
    (1<<SWORD) + (1<<DAGGER) + (1<<HEAVY) + (1<<BOW) + (1<<ITEM),
    //DRAGON LIGHT_D MAGIC_D
    (1<<BREATH) + (1<<ITEM),
    (1<<BREATH) + (1<<LIGHT_M) + (1<<ITEM),
    (1<<BREATH) + (1<<LIGHT_M) + (1<<STAFF) + (1<<ITEM),
    //DRAGON DARK_D DOOM_D
    (1<<BREATH) + (1<<ITEM),
    (1<<BREATH) + (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    (1<<BREATH) + (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    //LIGHT_M MAGICIAN SORCERER
    (1<<LIGHT_M) + (1<<ITEM),
    (1<<LIGHT_M) + (1<<STAFF) + (1<<ITEM),
    (1<<LIGHT_M) + (1<<DARK_M) + (1<<LANCE) + (1<<STAFF) + (1<<ITEM),
    //DARK_M WIZARD GREAT_WIZARD
    (1<<DARK_M) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<LIGHT_M) + (1<<BREATH) + (1<<GAUNTLET) + (1<<ITEM),
    //DARK_F WITCH GREATWITCH
    (1<<DARK_M) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<LIGHT_M) + (1<<BREATH) + (1<<HEAVY) + (1<<ITEM),
    //BALLISTICIAN
    (1<<ITEM) + (1<<HEAVY),
    (1<<BOW) + (1<<ITEM) + (1<<HEAVY),
    (1<<BOW) + (1<<ITEM) + (1<<HEAVY),
    //HEALER DIVINE SHAMAN
    (1<<STAFF) + (1<<ITEM),
    (1<<STAFF) + (1<<DAGGER) + (1<<ITEM),
    (1<<STAFF) + (1<<DAGGER) + (1<<ITEM),
    //THUG BRIGAND VIKING
    (1<<AXE) + (1<<GAUNTLET), //no item
    (1<<AXE) + (1<<SWORD) + (1<<GAUNTLET) + (1<<ITEM),
    (1<<SWORD) + (1<<AXE) + (1<<LANCE) + (1<<BOW) + (1<<GAUNTLET) + (1<<ITEM),
    //ARCHER RANGER SNIPER
    (1<<BOW) + (1<<ITEM),
    (1<<BOW) + (1<<ITEM) + (1<<HEAVY),
    (1<<BOW) + (1<<GAUNTLET) + (1<<HEAVY) + (1<<ITEM),
    //SOLDIER PIKEMAN HALBERDIER
    (1<<LANCE) + (1<<HEAVY) + (1<<ITEM),
    (1<<LANCE) + (1<<HEAVY) + (1<<ITEM),
    (1<<LANCE) + (1<<HEAVY) + (1<<ITEM),
    //AXEMAN BRUTE FIERCEMAGE
    (1<<AXE) + (1<<ITEM) + (1<<GAUNTLET),
    (1<<AXE) + (1<<DARK_M) + (1<<DAGGER) + (1<<GAUNTLET) + (1<<ITEM),
    (1<<AXE) + (1<<DARK_M) + (1<<DAGGER) + (1<<GAUNTLET) + (1<<BREATH) + (1<<ITEM),
    //BRAWLER BRUISER MELEEMASTER
    (1<<AXE) + (1<<GAUNTLET) + (1<<ITEM),
    (1<<AXE) + (1<<LANCE) + (1<<SWORD) + (1<<GAUNTLET) + (1<<ITEM),
    (1<<AXE) + (1<<LANCE) + (1<<SWORD) + (1<<GAUNTLET) + (1<<ITEM),
    //UNDERDOG PUPIL SAGE
    1<<LANCE, //no item
    (1<<LANCE) + (1<<LIGHT_M) + (1<<ITEM),
    -1, //all
    //UNKNOWN (uses all)
    -1, -1, -1,
    //COMMANDER
    -1, -1, -1,
    //KING DEMON IMMORTAL
    0,
    (1<<DARK_M) + (1<<BREATH) + (1<<HEAVY) + (1<<ITEM),
    -1,
    //DANCER PERFORMER STAR
    (1<<STAFF) + (1<<ITEM),
    (1<<STAFF) + (1<<SWORD) + (1<<ITEM),
    (1<<STAFF) + (1<<SWORD) + (1<<DAGGER) + (1<<BOW) + (1<<ITEM),
    //GHOULS
    (1<<LANCE) + (1<<SWORD), //no item
    (1<<LANCE) + (1<<SWORD),
    (1<<LANCE) + (1<<SWORD) + (1<<GAUNTLET),
    //REAPERS
    (1<<LANCE) + (1<<AXE), //no item
    (1<<LANCE) + (1<<AXE),
    (1<<LANCE) + (1<<AXE) + (1<<DARK_M),
    //SEEKERS
    (1<<DARK_M) + (1<<LIGHT_M), //no item
    (1<<DARK_M) + (1<<LIGHT_M),
    (1<<DARK_M) + (1<<LIGHT_M) + (1<<BREATH),
    //TRICKSTERS
    (1<<DAGGER) + (1<<STAFF) + (1<<DARK_M), //no item
    (1<<DAGGER) + (1<<STAFF) + (1<<DARK_M),
    (1<<DAGGER) + (1<<STAFF) + (1<<DARK_M),
    //SUMMONER
    (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    (1<<DARK_M) + (1<<STAFF) + (1<<ITEM),
    //SUMMONED
    1<<AXE, //no item
    1<<AXE,
    1<<AXE,
};

unsigned char abilities[] = {
    //DAGGERLORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //LANCE_LORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //AXE_LORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //LIGHT_LORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //DARK_LORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //STAFF_LORD
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //VILLAGER, CHIEF, LEADER
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //FIGHTER, WARRIOR, HERO
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //THIEF NINJA ASSASSIN
    LOCKPICK, LOCKPICK, LOCKPICK,
    //DRAGON LIGHT_D MAGIC_D
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //DRAGON DARK_D DOOM_D
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //LIGHT_M MAGICIAN SORCERER
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //DARK_M WIZARD GREAT_WIZARD
    NO_ABILITY, NO_ABILITY, CRIT_IMMUNE,
    //DARK_F WITCH GREATWITCH
    NO_ABILITY, NO_ABILITY, STATUS_IMMUNE,
    //BALLISTICIAN
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //HEALER DIVINE SHAMAN
    EXTRA_HEAL, EXTRA_HEAL, EXTRA_HEAL,
    //THUG BRIGAND VIKING
    WARY_FIGHTER, WARY_FIGHTER, WARY_FIGHTER,
    //ARCHER RANGER SNIPER
    NO_ABILITY, BOW_RANGE_PLUS, BOW_RANGE_PLUS,
    //SOLDIER PIKEMAN HALBERDIER
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //AXEMAN BRUTE FIERCEMAGE
    EXTRA_CRIT, EXTRA_CRIT, EXTRA_CRIT,
    //BRAWLER BRUISER MELEEMASTER
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //UNDERDOG PUPIL SAGE
    NO_ABILITY, NO_ABILITY, NO_ABILITY,
    //UNKNOWN
    TELEPORT, TELEPORT, TELEPORT,
    //COMMANDER
    COUNTER_ALL, COUNTER_ALL, COUNTER_ALL,
    //KING DEMON IMMORTAL
    NO_ABILITY, NO_ABILITY, IMMORTAL_A,
    //DANCER PERFORMER STAR
    REVITALISE, REVITALISE, REVITALISE,
    //GHOULS
    NO_ABILITY, NO_ABILITY, EFFECTIVE_IMMUNE,
    //REAPERS
    NO_ABILITY, NO_ABILITY, EFFECTIVE_IMMUNE,
    //SEEKERS
    NO_ABILITY, NO_ABILITY, EFFECTIVE_IMMUNE,
    //TRICKSTERS
    ALWAYS_HIT, ALWAYS_HIT, ALWAYS_HIT,
    //SUMMONER
    SUMMON, SUMMON, SUMMON,
    //SUMMONED
    SUMMONED, SUMMONED, SUMMONED,
};

//hp att def spd mgc res skl lck
unsigned char bases[] = {
    //DAGGERLORD
    11, 5, 3, 5, 3, 3, 4, 4,
    //LANCE_LORD
    12, 5, 4, 4, 2, 3, 5, 3,
    //AXE_LORD
    14, 6, 5, 4, 2, 1, 3, 2,
    //LIGHT_LORD
    11, 5, 3, 4, 5, 3, 6, 3,
    //DARK_LORD
    10, 5, 2, 6, 5, 3, 5, 3,
    //STAFF_LORD
    10, 5, 3, 4, 4, 4, 5, 3,
    //VILLAGER, CHIEF, LEADER
    6, 3, 2, 2, 2, 1, 3, 3,
    //FIGHTER, WARRIOR, HERO
    12, 6, 5, 3, 1, 0, 4, 2,
    //THIEF NINJA ASSASSIN
    10, 4, 2, 5, 2, 2, 6, 2,
    //DRAGON LIGHT_D MAGIC_D
    13, 4, 3, 4, 5, 2, 4, 5,
    //DRAGON DARK_D DOOM_D
    11, 3, 1, 2, 6, 5, 5, 1, 
    //LIGHT_M MAGICIAN SORCERER
    9, 2, 4, 3, 2, 2, 6, 0,
    //DARK_M WIZARD GREAT_WIZARD
    10, 1, 2, 4, 5, 4, 3, 2,
    //DARK_F WITCH GREATWITCH
    9, 2, 1, 5, 6, 3, 5, 4,
    //BALLISTICIAN
    10, 4, 2, 3, 0, 2, 4, 0,
    //HEALER DIVINE SHAMAN
    8, 6, 1, 1, 4, 5, 3, 4,
    //THUG BRIGAND VIKING
    9, 6, 4, 2, 0, 2, 5, 2,
    //ARCHER RANGER SNIPER
    7, 4, 3, 2, 2, 3, 4, 3,
    //SOLDIER PIKEMAN HALBERDIER
    11, 5, 3, 4, 1, 1, 5, 3,
    //AXEMAN BRUTE FIERCEMAGE
    12, 5, 5, 3, 0, 4, 4, 4, 
    //BRAWLER BRUISER MELEEMASTER
    13, 6, 4, 4, 0, 2, 3, 3, 
    //UNDERDOG PUPIL SAGE
    5, 3, 3, 3, 3, 3, 3, 3, 
    //UNKNOWN
    12, 4, 2, 3, 4, 3, 4, 4, 
    //COMMANDER
    10, 4, 3, 3, 3, 2, 5, 4, 
    //KING DEMON IMMORTAL
    9, 3, 3, 3, 3, 3, 3, 0, 
    //DANCER PERFORMER STAR
    8, 3, 1, 2, 4, 3, 2, 5, 
    //GHOULS
    10, 6, 5, 2, 0, 0, 5, 1, 
    //REAPERS
    9, 4, 3, 2, 6, 4, 5, 3, 
    //SEEKERS
    7, 1, 1, 4, 5, 4, 4, 2, 
    //TRICKSTERS
    14, 1, 3, 5, 5, 2, 0, 0, 
    //SUMMONER
    11, 3, 2, 2, 4, 2, 1, 2, 
    //SUMMONED
    1, 4, 2, 2, 3, 2, 3, 1, 

};




//hp att def spd mgc res skl lck
unsigned char growths[] = {
    //DAGGERLORD
    95, 50, 35, 45, 20, 20, 55, 30,
    //LANCE_LORD
    100, 60, 35, 40, 15, 15, 50, 25,
    //AXE_LORD
    105, 55, 35, 45, 10, 15, 50, 23,
    //LIGHT_LORD
    95, 50, 25, 50, 40, 30, 50, 28,
    //DARK_LORD
    90, 55, 20, 55, 50, 25, 60, 20,
    //STAFF_LORD
    95, 50, 20, 50, 45, 35, 55, 25,
    //VILLAGER, CHIEF, LEADER
    60, 15, 30, 15, 10, 25, 15, 20, 
    //FIGHTER, WARRIOR, HERO
    115, 50, 25, 35, 5, 15, 40, 25, 
    //THIEF NINJA ASSASSIN
    80, 40, 30, 50, 25, 25, 60, 25,
    //DRAGON LIGHT_D MAGIC_D
    100, 35, 35, 40, 45, 25, 35, 30, 
    //DRAGON DARK_D DOOM_D
    95, 5, 15, 10, 55, 65, 40, 20, 
    //LIGHT_M MAGICIAN SORCERER
    85, 30, 30, 35, 55, 55, 30, 35, 
    //DARK_M WIZARD GREAT_WIZARD
    80, 40, 20, 45, 50, 30, 45, 25,
    //DARK_F WITCH GREATWITCH
    75, 35, 20, 50, 50, 30, 50, 28,
    //BALLISTICIAN
    80, 45, 25, 25, 10, 15, 45, 15,
    //HEALER DIVINE SHAMAN
    85, 20, 15, 20, 45, 60, 40, 25,
    //THUG BRIGAND VIKING
    105, 55, 35, 25, 25, 20, 60, 20,
    //ARCHER RANGER SNIPER
    85, 50, 30, 40, 12, 12, 45, 40,
    //SOLDIER PIKEMAN HALBERDIER
    95, 60, 15, 45, 15, 25, 50, 40,
    //AXEMAN BRUTE FIERCEMAGE
    105, 45, 45, 35, 60, 4, 40, 18,
    //BRAWLER BRUISER MELEEMASTER
    110, 55, 30, 40, 20, 20, 45, 30,
    //UNDERDOG PUPIL SAGE
    95, 53, 38, 53, 58, 48, 58, 28,
    //UNKNOWN
    155, 45, 55, 30, 55, 10, 50, 23,
    //COMMANDER
    100, 40, 20, 35, 30, 25, 45, 28,
    //KING DEMON IMMORTAL
    220, 40, 45, 55, 45, 55, 60, 38,
    //DANCER PERFORMER STAR
    90, 35, 10, 30, 45, 70, 35, 35,
    //GHOULS
    85, 55, 25, 35, 0, 15, 13, 10,
    //REAPERS
    80, 50, 25, 40, 15, 28, 50, 5, 
    //SEEKERS
    65, 35, 20, 45, 55, 38, 50, 15,
    //TRICKSTERS
    200, 30, 25, 35, 50, 28, 0, 0,
    //SUMMONER
    95, 25, 30, 8, 40, 25, 35, 10,
    //SUMMONED
    0, 15, 30, 20, 10, 25, 45, 20,
};




//hp att def spd mgc res skl lck
unsigned char promoGains[] = {
    //DAGGERLORD
    5, 3, 1, 2, 1, 2, 2, 3,
    //LANCE_LORD
    5, 3, 1, 1, 1, 1, 3, 4, 
    //AXE_LORD
    5, 3, 1, 2, 0, 0, 3, 5, 
    //LIGHT_LORD
    7, 1, 1, 1, 2, 1, 2, 4,
    //DARK_LORD
    4, 2, 0, 3, 2, 0, 2, 5,
    //STAFF_LORD
    4, 2, 0, 3, 3, 2, 2, 3,
    //VILLAGER, CHIEF, LEADER
    3, 1, 1, 0, 0, 1, 0, 3,
    //FIGHTER, WARRIOR, HERO
    5, 2, 1, 3, 0, 0, 2, 5,
    //THIEF NINJA ASSASSIN
    4, 4, 1, 2, 0, 0, 2, 2,
    //DRAGON LIGHT_D MAGIC_D
    4, 1, 2, 0, 3, 1, 3, 3, 
    //DRAGON DARK_D DOOM_D
    6, 0, 2, 1, 3, 2, 1, 4, 
    //LIGHT_M MAGICIAN SORCERER
    3, 4, 2, 0, 4, 1, 2, 1, 
    //DARK_M WIZARD GREAT_WIZARD
    2, 2, 0, 4, 4, 0, 2, 5, 
    //DARK_F WITCH GREATWITCH
    1, 3, 0, 4, 4, 3, 2, 1, 
    //BALLISTICIAN
    3, 3, 2, 1, 2, 1, 2, 0, 
    //HEALER DIVINE SHAMAN
    10, 10, 3, 3, 1, 1, 6, 5,
    //THUG BRIGAND VIKING
    6, 2, 1, 1, 1, 0, 3, 5,
    //ARCHER RANGER SNIPER
    6, 2, 1, 4, 0, 1, 2, 3,
    //SOLDIER PIKEMAN HALBERDIER
    2, 4, 0, 2, 1, 1, 7, 1, 
    //AXEMAN BRUTE FIERCEMAGE
    5, 2, 2, 1, 3, 1, 2, 4, 
    //BRAWLER BRUISER MELEEMASTER
    3, 4, 1, 3, 0, 3, 4, 2, 
    //UNDERDOG PUPIL SAGE
    5, 2, 2, 1, 2, 2, 1, 5, 
    //UNKNOWN
    4, 4, 2, 1, 4, 2, 2, 3, 
    //COMMANDER
    10, 2, 1, 1, 2, 1, 1, 1,
    //KING DEMON IMMORTAL
    10, 3, 3, 3, 3, 3, 3, 3, 
    //DANCER PERFORMER STAR
    4, 5, 0, 1, 1, 1, 1, 4,
    //GHOULS
    5, 3, 1, 1, 0, 4, 2, 3, 
    //REAPERS
    4, 2, 1, 1, 8, 1, 1, 1, 
    //SEEKERS
    3, 0, 1, 1, 3, 3, 3, 1,
    //TRICKSTERS
    6, 2, 2, 1, 1, 1, 0, 0, 
    //SUMMONER
    5, 1, 3, 2, 2, 2, 3, 0, 
    //SUMMONED
    0, 3, 1, 2, 2, 1, 2, 1, 
};



unsigned char weights[] = {
    //DAGGERLORD
    7,
    //LANCE_LORD
    7,
    //AXE_LORD
    8,
    //LIGHT_LORD
    7,
    //DARK_LORD
    7,
    //STAFF_LORD
    7,
    //VILLAGER, CHIEF, LEADER
    5,
    //FIGHTER, WARRIOR, HERO
    8,
    //THIEF NINJA ASSASSIN
    6,
    //DRAGON LIGHT_D MAGIC_D
    10,
    //DRAGON DARK_D DOOM_D
    10,
    //LIGHT_M MAGICIAN SORCERER
    6,
    //DARK_M WIZARD GREAT_WIZARD
    7,
    //DARK_F WITCH GREATWITCH
    6,
    //BALLISTICIAN
    6,
    //HEALER DIVINE SHAMAN
    6,
    //THUG BRIGAND VIKING
    8,
    //ARCHER RANGER SNIPER
    7,
    //SOLDIER PIKEMAN HALBERDIER
    7,
    //AXEMAN BRUTE FIERCEMAGE
    7,
    //BRAWLER BRUISER MELEEMASTER
    7,
    //UNDERDOG PUPIL SAGE
    6,
    //UNKNOWN
    8,
    //COMMANDER
    8,
    //KING DEMON IMMORTAL
    12,
    //DANCER PERFORMER STAR
    5,
    //GHOULS
    7,
    //REAPERS
    9,
    //SEEKERS
    5,
    //TRICKSTERS
    6,
    //SUMMONER
    8,
    //SUMMONED
    5,
};



//hp att def spd mgc res skl lck    mov 7-bytes-padding
unsigned char movetype_growth_vars[] = {
    //infantry
    25, 10, 5, 5, 10, 10, 5, 5,     5, 0,0,0,0,0,0,0,
    //Cav
    20, 10, 10, 5, 5, 5, 5, 5,      7, 0,0,0,0,0,0,0,
    //armour
    45, 20, 15, 0, 10, 0, 5, 10,    4, 0,0,0,0,0,0,0,
    //flying
    15, 10, 0, 10, 10, 10, 10, 10,  7, 0,0,0,0,0,0,0,
};

int a = sizeof(growths);
int b = sizeof(abilities);
const int LINE_SIZE = sizeof(line_t);



int main(int argc, char* argv[]){
    action_init(argv[0]);
    FILE * fp = prep_fopen(CLASS_FILENAME, "wb");
    line_t line;
    for (int i = 0; i<4; i++) line.paddingTo32Bytes[i] = 0;
    for (char c = 0; c< CLASSES_COUNT; ++c){
        line.weapon_types = weapons[c];
        line.ability = abilities[c];
        for (int i = 0; i<8; i++) line.bases[i] = bases[(c/3)*8+i];
        for (int i = 0; i<8; i++) line.growths[i] = growths[(c/3)*8+i];
        for (int i = 0; i<8; i++) line.promoGains[i] = promoGains[(c/3)*8+i];
        line.weight = weights[c/3] + c%3;
        fwrite(&line, sizeof(line_t), 1, fp);
    }
    fclose(fp);
    fp = fopen(MOVETYPE_FILENAME, "wb");
    fwrite(&movetype_growth_vars, sizeof(char), 64, fp);
    return 0;
}
