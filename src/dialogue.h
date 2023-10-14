#ifndef DIALOGUE_H_
#define DIALOGUE_H_

//dialogue_t represents fseek values in char dialogue file
//0 for no dialogue

typedef unsigned short dialogue_t;

//16 bytes
typedef struct {
    dialogue_t on_death;
    dialogue_t on_final_battle;
    dialogue_t on_crit[3];
    dialogue_t on_promo;
    dialogue_t on_level[2];
} char_dialogue_t;


void dialogue_to_screen(dialogue_t dialogue_idx);

#endif
