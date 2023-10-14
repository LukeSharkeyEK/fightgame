#include "bitmap.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

//compile with bitmap.c

void create_copy_maps();
void test_copy_maps();

int main(int argc, char* argv[]){
    test_copy_maps();


    return 0;
}

void test_copy_maps(){
    int count;
    FILE* fp = fopen("test_copy_map_vals.dat", "rb");
    fread(&count, sizeof(int), 1, fp);
    unsigned short copy_locations[count];
    fread(copy_locations, sizeof(short), count, fp);
    fclose(fp);
    bitmap_t* bmp = bmp_get(100, 100);
    bitmap_t* wheel = bmp_fromFile("test_wheel.bmp");

    bmp_copy_pattern(bmp, wheel, copy_locations, count, 20, 20);
    bmp_copy_tile(bmp, wheel, 40, 40);
    bmp_toFile("test_pattern.bmp", bmp);
    free(bmp);
    free(wheel);
}


void create_copy_maps(){
    bitmap_t* bmp = bmp_get(80, 80);
    bitmap_t* wheel = bmp_get(40, 40);
    bitmap_t* copy_map = bmp_get(80, 80);
    bitmap_t* copy_map_rec = bmp_get(80, 80);
    int count = 0;
    unsigned short copy_locations[596*2];
    unsigned char chans[] = {0,0,0};


    for (int i = 0; i<40; ++i) for (int j = 0; j<40; ++j){
        chans[0] = i*6;
        chans[1] = j*6;
        chans[2] = 255-(i+j)*3;
        bmp_set(wheel, i, j, chans);
    }


    for (int i = -1; i<41; ++i){
        int outbound = 4;
        double d_i = (double) i;
        int limit = (2*cos(i/2.5)+sin(i)) + outbound;
        for(int j = 0; j< limit; ++j){
            bmp_trySet(copy_map, 59-i, 19-j, WHITE);
            copy_locations[count++] = 59-i;
            copy_locations[count++] = 19-j;


            bmp_trySet(copy_map, i+20, 60+j, WHITE);
            copy_locations[count++] = i+20;
            copy_locations[count++] = 60+j;


            bmp_trySet(copy_map, 19-j, i+20, WHITE);
            copy_locations[count++] = 19-j;
            copy_locations[count++] = i+20;


            bmp_trySet(copy_map, 60+j, 59-i, WHITE);
            copy_locations[count++] = 60+j;
            copy_locations[count++] = 59-i;
        }
    }

    bmp_trySet(copy_map, 60, 18, WHITE);
    copy_locations[count++] = 60;
    copy_locations[count++] = 18;

    bmp_trySet(copy_map, 60, 61, WHITE);
    copy_locations[count++] = 60;
    copy_locations[count++] = 61;

    bmp_trySet(copy_map, 19, 18, WHITE);
    copy_locations[count++] = 19;
    copy_locations[count++] = 18;


    bmp_trySet(copy_map, 19, 61, WHITE);
    copy_locations[count++] = 19;
    copy_locations[count++] = 61;

    for (int i = -2; i<42; ++i){
        int outbound = 3;
        double d_i = (double) i;
        int limit = (cos(i/2)+sin(-i/2)) + outbound;
        for(int j = 0; j< limit; ++j){
            bmp_trySet(copy_map_rec, 59-i, 19-j, WHITE);
            bmp_trySet(copy_map_rec, i+20, 60+j, WHITE);
            bmp_trySet(copy_map_rec, 19-j, 59-i, WHITE);
            bmp_trySet(copy_map_rec, 60+j, i+20, WHITE);
        }
    }


    bmp_copy_tile(bmp, wheel, 20, 20);
    bmp_copy_tile(copy_map, wheel, 20, 20);
    bmp_copy_tile(copy_map_rec, wheel, 20, 20);
    bmp_toFile("test.bmp", bmp);
    bmp_toFile("test_wheel.bmp", wheel);
    bmp_toFile("test_copy_map.bmp", copy_map);
    bmp_toFile("test_copy_map_rec.bmp", copy_map_rec);
    free(bmp);
    free(wheel);
    free(copy_map);
    free(copy_map_rec);

    FILE* fp = fopen("test_copy_map_vals.dat", "wb");
    fwrite(&count, sizeof(int), 1, fp);
    fwrite(copy_locations, sizeof(unsigned short), count, fp);
    fclose(fp);

}