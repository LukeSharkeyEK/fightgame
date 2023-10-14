#include <stdlib.h>
#include "unit.h"
#include "tiles.h"
#include "save.h"
#include "action.h"
#include "menu.h"
#include "battle.h"

void unit_nearest_order(unsigned char * restrict order, unsigned char * restrict distances, unsigned char x, unsigned char y);


unsigned char cursor_x;
unsigned char cursor_y;
unsigned char unit_selected = 0;

unsigned char can_move[MAX_TILES];

unit_t npc_units[NPC_COUNT] = {0};

void init_map(unsigned char param){

    //todo
}


//-O2 is less than a millionth the size of -O3, do something!!!!!!



//todo maybe do at start of cursor loop and play animation for selected unit?
//relies on dead units having x_pos == -1
unsigned char set_unit_selected(){
    for (int i = 0; i<NPC_COUNT; ++i)
        if (npc_units[i].x_pos == cursor_x && npc_units[i].y_pos == cursor_y)
            return unit_selected = IS_NPC | i;
    for (int i = 0; i<ALLY_COUNT; ++i)
        if (ALLY(i).x_pos == cursor_x && ALLY(i).y_pos == cursor_y)
            return unit_selected = i;
    return unit_selected = NO_UNIT_SELECTED;
}


#define NEXT_UNIT_SET_CURSOR    1<<0
#define NEXT_UNIT_TO_MOVE       1<<1

//todo ENSURE SOME UNIT CAN MOVE
//ENSURE CURSOR CANNOT BE ON ENEMY UNIT WHEN NO ENEMIES REMAIN!!! otherwise does not terminate
unsigned char next_unit(unsigned char current, unsigned char args){
    unsigned char is_npc = unit_selected & IS_NPC;;
    if (current == NO_UNIT_SELECTED) current = 0;
    else {
        ++current;
        if (is_npc && current == NPC_COUNT || !is_npc && current == ALLY_COUNT)
            current = is_npc;
    } 
    unit_t * u = (is_npc) ? &npc_units[unit_selected & ~IS_NPC] : &ALLY(unit_selected);
    if ((args & NEXT_UNIT_TO_MOVE) && !u->to_move) return next_unit(current, args);
    if (args & NEXT_UNIT_SET_CURSOR) {
        cursor_x = u->x_pos;
        cursor_y = u->y_pos;
    }
    return current;
}


//set cursor pos to unit 0 pos at start?
//covers controls when user has cursor
void to_map_cursor(unsigned char move_to_unit_0){
    if (move_to_unit_0){
        cursor_x = ALLY(0).x_pos;
        cursor_y = ALLY(0).y_pos;
    }
    //todo draw things
    while (1) {
        char input = read_char();
        if (input == key_map.K_DOWN         && cursor_y) --cursor_y;
        else if (input == key_map.K_LEFT    && cursor_x) --cursor_x;
        else if (input == key_map.K_UP      && cursor_y+1 < map_info.height) ++cursor_y;
        else if (input == key_map.K_RIGHT   && cursor_x+1 < map_info.width)  ++cursor_x;

        else if (input == key_map.K_INFO && (set_unit_selected() != NO_UNIT_SELECTED)) 
            return next_menu(INFO_UNIT);
        else if (input == key_map.K_NO) 
            return next_menu(BATTLE_SETTINGS);
        else if (input == key_map.K_YES) {
            unsigned char selected = set_unit_selected();
            if (selected == NO_UNIT_SELECTED)
                return next_menu(BATTLE_SETTINGS);
            if (selected & IS_NPC)
                return next_menu(INFO_UNIT);
            //otherwise is playable char
            return move_unit(1);
        } else if (input == key_map.K_NEXT) {
            next_unit(unit_selected, NEXT_UNIT_SET_CURSOR | NEXT_UNIT_TO_MOVE);
        }
    }
}


void move_unit(unsigned char calc_movement){
    //if ally can pass, calculate movement before removing enemy tiles
    if (calc_movement) {
        if (ALLY(unit_selected).status_cond == CAN_PASS)
            get_movement(&map_info, can_move, ALLY(unit_selected).move_type, ALLY(unit_selected).movement, 
                ALLY(unit_selected).x_pos, ALLY(unit_selected).y_pos);
        for (int i  = 0; i<NPC_COUNT; ++i)
            if (npc_units[i].hp)
                can_move[npc_units[i].y_pos * map_info.width + npc_units[i].x_pos] = BLOCKED_PATH;
        if (ALLY(unit_selected).status_cond != CAN_PASS)        
            get_movement(&map_info, can_move, ALLY(unit_selected).move_type, ALLY(unit_selected).movement, 
                ALLY(unit_selected).x_pos, ALLY(unit_selected).y_pos);
    }

    //show movement pls todo
    while(1){
        char input = read_char();
        if (input == key_map.K_DOWN && ALLY(unit_selected).y_pos) --ALLY(unit_selected).y_pos;
        else if (input == key_map.K_UP && ALLY(unit_selected).y_pos+1 < map_info.height) ++ALLY(unit_selected).y_pos;
        else if (input == key_map.K_LEFT && ALLY(unit_selected).x_pos) --ALLY(unit_selected).x_pos;
        else if (input == key_map.K_RIGHT && ALLY(unit_selected).x_pos+1 < map_info.width) ++ALLY(unit_selected).x_pos;

        else if (input == key_map.K_NO) {
            ALLY(unit_selected).x_pos = cursor_x;
            ALLY(unit_selected).y_pos = cursor_y;
            return to_map_cursor(0);
        }
        else if (input == key_map.K_YES && 
            can_move[ALLY(unit_selected).y_pos * map_info.width + ALLY(unit_selected).x_pos] && 
            can_move[ALLY(unit_selected).y_pos * map_info.width + ALLY(unit_selected).x_pos] != BLOCKED_PATH)
                return next_menu(UNIT_ACTIONS);
        else if (input == key_map.K_INFO){
            ALLY(unit_selected).x_pos = cursor_x;
            ALLY(unit_selected).y_pos = cursor_y;
            return next_menu(INFO_UNIT);
        }
    }
}


void end_turn(unsigned char param){
    ALLY(unit_selected).to_move = 0;
    for (int i = 0; i<ALLY_COUNT; ++i)
        if (ALLY(i).to_move)
            cursor_x = ALLY(unit_selected).x_pos;
            cursor_y = ALLY(unit_selected).y_pos;
            return to_map_cursor(0);
    //todo on end of turn things, check win conds?
    //enemy turn
}

void open_chest(unsigned char param){
    if (map_info.tiles[ALLY(unit_selected).y_pos * map_info.width + ALLY(unit_selected).x_pos].type != CHEST_LOCKED)
        return next_menu(UNIT_ACTIONS);
    //todo get something from chest and update sprite to opened chest
    map_info.tiles[ALLY(unit_selected).y_pos * map_info.width + ALLY(unit_selected).x_pos].type = CHEST_OPENED;
    end_turn(0);
}

void discard_item(unsigned char param){
    unit_discard_equipped(&ALLY(0));
    att_heal_give_item_menu(UNIT_INVENTORY_ITEM);
}

void summon(unsigned char param){
    if (ALLY(SUMMON_ID).hp) return next_menu(UNIT_ACTIONS);
    unit_get_generic(&ALLY(SUMMON_ID), SUMMONED1 - SUMMONER1 + ALLY(unit_selected).class, 
        ALLY(unit_selected).level);
    //change position and give items todo
}



//next unit examples, 
/* 
    attack - enemy
    heal - ally npc
    give - ally
    carry? - ally npc
    select unit - ally / selected?, dont use this, just go by ID!

*/



//potentially store this data temporarily
unsigned char unit_nth_nearest(unsigned char skip_n, unsigned char x, unsigned char y, unsigned char min_range, unsigned char max_range){
    //count on field units
    if (skip_n >= map_info.t_ally_count + map_info.t_enemy_count) return NO_UNIT_SELECTED;
    //create array of unit manhatten distances and order them
    unsigned char distances[UNIT_COUNT];
    unsigned char order[UNIT_COUNT];
    unit_nearest_order(order, distances, x, y);
    for (unsigned char i = 0; i < UNIT_COUNT; ++i)
    {
        if (distances[i] <= max_range && distances[i] >= min_range) {
            if (skip_n) --skip_n;
            else return order[i];
        }
    }
    return NO_UNIT_SELECTED;
}


/*  
    assume order is big enough len(order) = UNIT_COUNT
    evaluates all distances to units from (x,y)
    outputs both ordered unit_nums and distances into ptrs, both ordered by distances ascending
*/
void unit_nearest_order(unsigned char * restrict order, unsigned char * restrict distances, unsigned char x, unsigned char y){
    for (int i = 0; i<ALLY_COUNT; ++i) {
        distances[i] = abs(x-ALLY(i).x_pos) + abs(y-ALLY(i).y_pos);
        order[i] = i;
    }
    for (int i = 0; i<NPC_COUNT; ++i) {
        distances[ALLY_COUNT+i] = abs(x-npc_units[i].x_pos + abs(y-npc_units[i].y_pos));
        order[ALLY_COUNT+i] = IS_NPC + i;
    }
    //merge sort
    unsigned char * store_order = order;
    unsigned char * store_dist = distances;
    unsigned char output_v[UNIT_COUNT];
    unsigned char *output = output_v;
    unsigned char output_distances_v[UNIT_COUNT];
    unsigned char *output_distances = output_distances_v;
    for (unsigned short i = 1; i < UNIT_COUNT; i<<=1){
        char output_index = 0;
        for(unsigned char j = 0; j<UNIT_COUNT; j = j+i+i){
            unsigned char first_index = j;
            unsigned char second_index = j+i;
            while(first_index<j+i && second_index<j+i+i && second_index<UNIT_COUNT){
                unsigned char* selected_index;
                selected_index = (first_index == j+i || second_index != j+i+i && second_index != UNIT_COUNT \
                    && distances[first_index] < distances[second_index])? &first_index : &second_index;

                output[output_index] = order[*selected_index];
                output_distances[output_index++] = distances[(*selected_index)++];
            }
        }
        unsigned char * temp = output;
        output = order;
        order = temp;
        temp = output_distances;
        output_distances = distances;
        distances = temp;
    }
    if (store_order == order) return;
    for (unsigned char i = 0; i < UNIT_COUNT; ++i){
        store_order[i] = output[i];
        store_dist[i] = output_distances[i];
    }
}
