#include "tiles.h"
#include "bitmap.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]);
int main(int argc, char* argv[]){
    return 0;
}



/* todo have liquid simply draw over adjacent land when drawing, does not need algo here, that would do the work twice
    include diagonals */



/* probably better idea than storing in files! */
/* tile_info_t:

    unsigned char type from tile_set
    unsigned char default_hp = 0 for unbreakable
    unsigned char heal
    unsigned char avoid
    unsigned char pass_effort[4] (infantry, cavalry, armoured, flying) -1 for cannot pass
*/

const tile_info_t tile_info[] = {
    (tile_info_t) {OOB,                 0,  0,  0,  -1, -1, -1, -1, },
    (tile_info_t) {GRASS,               0,  0,  0,   1,  1,  1,  1, },
    (tile_info_t) {RIVER | IS_LIQUID,   0,  0,  0,   4, -1, -1,  1, },
    (tile_info_t) {OCEAN | IS_LIQUID,   0,  0,  0,  -1, -1, -1,  1, },
    (tile_info_t) {ICE,                 0,  0,  0,   1,  2,  1,  1, },
    (tile_info_t) {MOUNTAIN,            0,  0,  20,  3, -1,  3,  1, },
    (tile_info_t) {PATH,                0,  0,  0,   1,  1,  1,  1, },
    (tile_info_t) {WALL,                0,  0,  0,  -1, -1, -1, -1, },
    (tile_info_t) {CRACKED_WALL,        30, 0,  0,  -1, -1, -1, -1, },
    (tile_info_t) {TWIG,                15, 0,  0,  -1, -1, -1, -1, },
    (tile_info_t) {WOOD_PATCH,          0,  0,  0,   1,  1,  1,  1, },
    (tile_info_t) {FOREST,              0,  0,  10,  2,  4,  2,  1, },
    (tile_info_t) {FORT,                0,  12, 15,  1,  1,  1,  1, },
    (tile_info_t) {THRONE,              0,  7,  10,  1,  1,  1,  1, },
    (tile_info_t) {SWAMP | IS_LIQUID,   0,  0,  0,   2,  4,  2,  1, },
    (tile_info_t) {SWAMP_ICE,           0,  0,  0,   1,  2,  1,  1, },
    (tile_info_t) {HILL,                0,  0,  10,  3,  5,  3,  1, },
    (tile_info_t) {CHEST_LOCKED,        0,  0,  0,   1,  1,  1,  1, },
    (tile_info_t) {CHEST_OPENED,        0,  0,  0,   1,  1,  1,  1, },
    (tile_info_t) {SHOP,                0,  0,  0,   1,  1,  1,  1, },
    
};


//file has height, width, win_cond, max_turns, tile[0].num, tile[0].hp, tile[1].num ...

void get_map(map_info_t * map_info, unsigned char level_no){
    //todo create filename from params
    char filename[10];
    FILE* fp = fopen(filename, "rb");
    fread(&map_info->height, sizeof(char), 1, fp);
    fread(&map_info->width, sizeof(char), 1, fp);
    fread(&map_info->win_cond, sizeof(char), 1, fp);
    fread(&map_info->max_turns, sizeof(char), 1, fp);
    fread(&map_info->tiles, sizeof(char)*2, map_info->height * map_info->width, fp);
    fclose(fp);
    map_info->turn_no = 1;
};


//0 is nothing, -1s are obstacles and other vals are reachable with value x where x was the movement left from the previous tile
//input: move_data has 0s and -1s,
//output: move_data has 0s, -1s and vals,
//no recursion!!!! Uses own stack
//Stack.size <= 64 for 7 movement, ie stackPointer<=64*3

void get_movement(const map_info_t * map_info, unsigned char* move_data, unsigned char move_type, unsigned char movement, unsigned char x, unsigned char y){
    //unsigned char* stack = malloc(sizeof(char)*64*3);
    unsigned char stack[64*3];
    unsigned char* stackPointer = &stack[0];
    unsigned char move_left;
    int pos = y * map_info->width + x;
    move_data[pos] = movement;
    while (1){
        if (x+1 < map_info->width)  {
            move_left = movement - tile_info[map_info->tiles[pos+1].type].pass_effort[move_type];
            if (!(move_left& 128) && movement > move_data[pos+1]) {
                move_data[pos+1] = movement;
                *(stackPointer++) = x+1;
                *(stackPointer++) = y;
                *(stackPointer++) = move_left;
            }
        }
        if (x) {
            move_left = movement - tile_info[map_info->tiles[pos-1].type].pass_effort[move_type];
            if (!(move_left&128) && movement > move_data[pos-1]) {
                move_data[pos-1] = movement;
                *(stackPointer++) = x-1;
                *(stackPointer++) = y;
                *(stackPointer++) = move_left;
            }
        }
        if (y+1 < map_info->height) {
            move_left = movement - tile_info[map_info->tiles[pos+map_info->width].type].pass_effort[move_type];
            if (!(move_left&128) && movement > move_data[pos+map_info->width]) {
                move_data[pos+map_info->width] = movement;
                *(stackPointer++) = x;
                *(stackPointer++) = y+1;
                *(stackPointer++) = move_left;
            }
        }
        if (y) {
            move_left = movement - tile_info[map_info->tiles[pos-map_info->width].type].pass_effort[move_type];
            if (!(move_left&128) && movement > move_data[pos-map_info->width]) {
                move_data[pos-map_info->width] = movement;
                *(stackPointer++) = x;
                *(stackPointer++) = y-1;
                *(stackPointer++) = move_left;
            }
        }
        next_in_stack:
        if (stackPointer == &stack[0]) break;
        movement = *(stackPointer--);
        y = *(stackPointer--);
        x = *(stackPointer--);
        if (!movement) goto next_in_stack;
        pos = y * map_info->width + x;
    }
    //free(stack);
}
