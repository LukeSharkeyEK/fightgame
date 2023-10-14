#ifndef ACTION_H_
#define ACTION_H_


#include <stdio.h>


extern struct key_binding_t {
    char K_LEFT;
    char K_RIGHT;
    char K_UP;
    char K_DOWN;
    char K_YES;
    char K_NO;
    char K_INFO;
    char K_NEXT;
} key_map;

void sleep(unsigned int ms);

void action_init(const char* path);

void set_display_text(const char* text); //todo change to GUI
void display_text_and_wait(const char* text);
void display_text_and_sleep(const char* text, unsigned int ms);

FILE* prep_fopen(const char *filename, const char *mode);

char read_char();

void toggle_volume(unsigned char param); //todo all sound related stuff

#endif
