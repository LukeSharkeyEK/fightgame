#ifndef BITMAP_H_
#define BITMAP_H_

//padded_width = min(width + padding) s.t. (padded_width)%4 = 0
//len(array) = 3*height*padded_width
typedef struct{
    unsigned short  width;
    unsigned short  height;
    unsigned short  padded_width;
    unsigned int  size;
    unsigned char  pixels[];
} bitmap_t;

extern unsigned char TRANSPARENT[];
extern unsigned char BLACK[];
extern unsigned char WHITE[];
extern unsigned char RED[];
extern unsigned char YELLOW[];
extern unsigned char GREEN[];
extern unsigned char CYAN[];
extern unsigned char BLUE[];
extern unsigned char MAGENTA[];

bitmap_t*       bmp_get(unsigned short width, unsigned short height);
void            bmp_zero(bitmap_t* bmp);
void            bmp_set(bitmap_t* bmp, unsigned short col, unsigned short row, const unsigned char* vals);
void            bmp_trySet(bitmap_t* bmp, unsigned short col, unsigned short row, const unsigned char* vals);
void            bmp_toFile(const char* filename, const bitmap_t* bmp);
unsigned char*  bmp_pixel(const bitmap_t* bmp, unsigned short col, unsigned short row);
bitmap_t*       bmp_fromFile(const char* filename);

void            bmp_copy_tile(bitmap_t* dest, const bitmap_t* src, unsigned short x, unsigned short y);
void            bmp_copy_pattern(bitmap_t* dest, const bitmap_t* src, const unsigned short* where_to_copy, unsigned short count,
                    short offset_x, short offset_y);

#endif
