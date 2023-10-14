#include "dialogue.h"
#include "action.h"
#include <stdio.h>

#define CHAR_DIALOGUE_FILENAME "data/char_dialogue.dat"



void dialogue_to_screen(dialogue_t dialogue_idx){
    if (!dialogue_idx) return;
    FILE* fp = fopen(CHAR_DIALOGUE_FILENAME, "rb");
    fseek(fp, dialogue_idx, SEEK_SET);
    char buffer[32];
    fread(buffer, sizeof(char), 31, fp);
    fclose(fp);
    buffer[31] = 0;
    display_text_and_wait(buffer);
}
