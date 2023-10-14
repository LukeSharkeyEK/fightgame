#ifndef BATTLE_H_
#define BATTLE_H_

//npc consts
#define IS_NPC              128
#define NO_UNIT_SELECTED    127
#define NPC_COUNT           30  /* change me */
#define UNIT_COUNT          (NPC_COUNT+ALLY_COUNT)

//NOW UNUSED!!!
//number of digits in UNIT_COUNT (ceiling(log_2 UNIT_COUNT))
#define UNIT_COUNT_DIGITS   (   (UNIT_COUNT & 0x80) ? 8 : \
                                ((UNIT_COUNT >> ((UNIT_COUNT >> (UNIT_COUNT & 0x78 ? 4 : 0) & 0x06 ? 2 : 0) + \
                                (UNIT_COUNT & 0x78 ? 4 : 0)) & 1) + \
                                ((UNIT_COUNT >> (UNIT_COUNT & 0x78 ? 4 : 0) & 0x06 ? 2 : 0) + (UNIT_COUNT & 0x78 ? 4 : 0))) )
/*
    alternative definition: - the two are equivalent, this is easier to read but clogs namespace with _AUX vars
#define UNIT_COUNT_DIGITS_AUX2  (UNIT_COUNT & 0x78 ? 4 : 0)
#define UNIT_COUNT_DIGITS_AUX1  ((UNIT_COUNT >> UNIT_COUNT_DIGITS_AUX2 & 0x06 ? 2 : 0) + UNIT_COUNT_DIGITS_AUX2)
#define UNIT_COUNT_DIGITS       (UNIT_COUNT & 0x80) ? 8 : ((UNIT_COUNT >> UNIT_COUNT_DIGITS_AUX1 & 1) + UNIT_COUNT_DIGITS_AUX1)
*/



//movement const
#define BLOCKED_PATH        255  /* == -1 for unsigned char */

extern unsigned char unit_selected;

void init_map           (unsigned char param);
void to_map_cursor      (unsigned char param);
void end_turn           (unsigned char param);
void move_unit          (unsigned char unit_no);
void open_chest         (unsigned char param);
void discard_item       (unsigned char param);

#endif
