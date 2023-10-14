//in this file, up down right left are given char codes of w s d a instead of the multi char codes they have by default
//compile with action.c

#include <stdlib.h>
#include <string.h>
#include "action.h"


/* todo potentially add check for filepath_size to ensure null terminated strings can fit */
#define FILEPATH_SIZE 128
static unsigned char length = 0;
static char* filepath;

static unsigned char init = 0;

struct key_binding_t key_map = (struct key_binding_t) {
    //K_UP; 
    'w',
    //K_DOWN;
    's',
    //K_RIGHT;
    'd',
    //K_LEFT;
    'a',
    //K_YES; 
    'z',
    //K_NO;
    'x',
    //K_INFO;
    'c',
    //K_NEXT
    'q',
};

#if __WIN32__ || _WIN64 || _WIN32
    //getch implementation
    //Can use visual studio cl or minGW gcc
    #include <conio.h>
    #include <windows.h>


    void free_filepath(){
        free(filepath);
    }
    void action_init(char* path){
        if (init) return;
        init = 1;
        int len = 0; int i = 0;
        for (int i=0; path[i]; i++)
            if (path[i] == '/') len= i-1;
        filepath = malloc(sizeof(char)* FILEPATH_SIZE);
        length = len;
        strncpy(filepath, path+2, len);
        filepath[len] = 0;
        atexit(free_filepath);
    }


    char read_char(){
        char a = getch();
        if (a==224) {a = getch();
            switch (a) {
            case 72:
                //a = 'w';
                a = key_map.K_UP;
                break;
            case 75:
                //a = 'a';
                a = key_map.K_LEFT;
                break;
            case 77:
                //a = 'd';
                a = key_map.K_RIGHT;
                break;
            case 80:
                //a = 's';
                a = key_map.K_DOWN;
                break;
            }
        return a;
    }


    void sleep(unsigned int ms){
        Sleep(ms);
    }

    
#elif __APPLE__
    //terminal attributes implementation
    #include <termios.h>
    #include <time.h>



    void free_filepath(){
        free(filepath);
    }
    void action_init(const char* path){
        if (init) return;
        init = 1;
        struct termios info;
        tcgetattr(0, &info);          /* get current terminal attributes; 0 is the file descriptor for stdin */
        info.c_lflag &= ~ICANON;      /* disable canonical mode */
        info.c_cc[VMIN] = 1;          /* wait until at least one keystroke available */
        info.c_cc[VTIME] = 1;         /* no timeout */
        tcsetattr(0, TCSANOW, &info); /* set immediately */



        //l_padding = 2 when ./action, 0 when /action
        int l_padding = 0;
        if(path[0] == '.') l_padding = 2;

        int len = 0;
        for (int i=0; path[i]; i++)
            if (path[i] == '/') len= i+1-l_padding;
        filepath = malloc(sizeof(char)* FILEPATH_SIZE);
        length = len;
        strncpy(filepath, path+l_padding, len);
        filepath[len] = 0;
        atexit(free_filepath);
    }

    
    char read_char(){
        fpurge(stdin);
        char a = getchar();
        /* handle arrow keys: */
        if (a==27) {getchar(); a = ((char*)&key_map)[getchar()-65];}
        return a;
    }


    void sleep(unsigned int ms){
        struct timespec ts = (struct timespec){ms/1000, (ms%1000)*1000000,};
        nanosleep(&ts, NULL);
    }

#else
  #error Not a supported platform
#endif

void set_display_text(const char* text){
    puts(text); //todo replace with GUI output?
}

void display_text_and_wait(const char* text){
    set_display_text(text); 
    read_char();
}

void display_text_and_sleep(const char* text, unsigned int ms){
    set_display_text(text);
    sleep(ms);
}


FILE* prep_fopen(const char *filename, const char *mode){
    int i = 0;
    do 
        filepath[length+i] = filename[i];
    while (filename[i++]);
    return fopen(filepath, mode);
}


/*
int main(int argc, char* argv[]){
    action_init(argv[0]);

    char b[11];
    for (int i = 0; i<10; i++){
        sleep(2000);
        b[i] = read_char();
        putchar('\n');
    }
    b[10] = 0;
    display_text_and_wait(b);
    return 0;
}
*/
