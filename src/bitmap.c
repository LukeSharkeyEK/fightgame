#include <stdio.h>
#include <stdlib.h>
#include "bitmap.h"


#define TILE_SIZE               40
#define SCREEN_WIDTH_IN_TILES   25
#define SCREEN_HEIGHT_IN_TILES  20


unsigned char TRANSPARENT[] = {0, 0, 0,};
unsigned char BLACK[]       = {0, 0, 1,};
unsigned char WHITE[]       = {255, 255, 255};
unsigned char RED[]         = {0, 0, 255,};
unsigned char YELLOW[]      = {0, 255, 255,};
unsigned char GREEN[]       = {0, 255, 0,};
unsigned char CYAN[]        = {255, 255, 0,};
unsigned char BLUE[]        = {255, 0, 0,};
unsigned char MAGENTA[]     = {255, 0, 255,};

bitmap_t* bmp_get(unsigned short width, unsigned short height) {
    //pad width to multiple of 4
    unsigned short pw = width * 3;
    if (pw & 3) pw += 4;
    pw &= ~3;
    unsigned int size = pw*height;
    bitmap_t* bmp = malloc(sizeof(bitmap_t) + size*sizeof(unsigned char));
    bmp->width = width;
    bmp->height = height;
    bmp->size = size;
    bmp->padded_width = pw;
    bmp_zero(bmp);
    return bmp;
}

void bmp_zero(bitmap_t* bmp){
    for (int i = 0; i<bmp->size; i++) bmp->pixels[i] = 0;
}

void bmp_set(bitmap_t* bmp, unsigned short col, unsigned short row, const unsigned char* vals){
    unsigned char * pixel = bmp_pixel(bmp, col, row);
    for (int rgb = 0; rgb<3; rgb++) pixel[rgb] = vals[rgb];
}

void bmp_trySet(bitmap_t* bmp, unsigned short col, unsigned short row, const unsigned char* vals){
    if (col<0 || col >= bmp->width || row<0 || row >= bmp->height) return;
    bmp_set(bmp, col, row, vals);
}

unsigned char* bmp_pixel(const bitmap_t* bmp, unsigned short col, unsigned short row){
    return (unsigned char*) &bmp->pixels[row*bmp->padded_width+col*3];
}

/* starts drawing src[0][0] at dest[offset_x][offset_y] */
//todo 
void bmp_copy_onto(bitmap_t* dest, const bitmap_t* src, signed char offset_x, signed char offset_y){
    
    return;
}

/* Copies src to dest in vals sepcified by where to copy, list of pairs of chars, with count pairs */
/* src must have length/width at least TILE_SIZE */
/* offset_x and y = (0,0) copies to 20, 20 for liquid tiles */
void bmp_copy_pattern(bitmap_t* dest, const bitmap_t* src, const unsigned short* where_to_copy, unsigned short count, short offset_x, short offset_y){
    for (int i = 0;i<count; i+=2)
        bmp_trySet(dest, where_to_copy[i]+offset_x, where_to_copy[i+1]+offset_y, 
            bmp_pixel(src, (where_to_copy[i]+offset_x)%TILE_SIZE, (where_to_copy[i+1]+offset_y)%TILE_SIZE));
    return;
}

// (x,y) = (0,0) for bottom left
//does NOT check for out of bounds of bmp!!! and src must be at least tilesize size
void bmp_copy_tile(bitmap_t* dest, const bitmap_t* src, unsigned short x, unsigned short y){
    for (int row = 0; row<TILE_SIZE; ++row){
        unsigned char * dest_ptr = &dest->pixels[(row+y)*dest->padded_width+x*3];
        const unsigned char * src_ptr = &src->pixels[row*src->padded_width];
        for (int col_and_channel = 0; col_and_channel<TILE_SIZE*3; ++col_and_channel)
            *(dest_ptr++) = *(src_ptr++);
    }
}

void bmp_toFile(const char* filename, const bitmap_t* bmp) {
    char tag[] = { 'B', 'M' };
    int header[] = {
        0,                          //Space for file size
        0, 0x36,                    //Application code and pixel data byte offset
        0x28,                       //40 byte header
        bmp->width, bmp->height,    //Width & Height
        0x180001,                   //Colour depth and num of planes 
        0,                          //No compression
        bmp->size,                  //Img size in bytes
        0x002e23, 0x002e23,         //Printer res.
        0, 0                        //Important colours
    };
    header[0] = sizeof(tag) + sizeof(header) + bmp->size * sizeof(char);
    FILE *fp = fopen(filename, "wb");
    fwrite(&tag, sizeof(tag), 1, fp);
    fwrite(&header, sizeof(header), 1, fp);
    fwrite(bmp->pixels, bmp->size * sizeof(unsigned char), 1, fp);
    fclose(fp);
}

bitmap_t* bmp_fromFile(const char* filename){
    FILE *fp = fopen(filename, "rb");
    fseek(fp, 0x0A, SEEK_SET);
    int dataoffset;
    fread(&dataoffset, sizeof(int), 1, fp);
    //dataoffset += 10;
    fseek(fp, 0x12, SEEK_SET);
    int width;
    int height;
    fread(&width, sizeof(int), 1, fp);
    fread(&height, sizeof(int), 1, fp);

    fseek(fp, 0x1C, SEEK_SET);
    short int bitsperpixel;
    fread(&bitsperpixel, sizeof(short int), 1, fp);


    bitmap_t* bmp = bmp_get(width, height);
    unsigned char col[4];

    fseek(fp, dataoffset, SEEK_SET);
    for (int i = 0; i<height; i++) {
        for (int j = 0; j<width; j++){
            fread(col, sizeof(char), 3, fp);
            bmp_trySet(bmp, j, i, col);
        }
        if (3*width&3) fread(col, sizeof(char), 4-((3*width)&3), fp);
    }

    fclose(fp);
    return bmp;
}
