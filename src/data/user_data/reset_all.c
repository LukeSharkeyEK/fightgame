#include <stdio.h>
#include "../../menu.h"
#include "../../save.h"
#include "../../action.h"

#include "errno.h"
#include <string.h>

/* COMPILE WITH ACTION!!! */
/*
    gcc -o reset_all reset_all.c ../../action.c -O3
 */

settings_t defaults = (settings_t){
    "", 0, 0, 
};



int main(int argc, char* argv[]);

int main(int argc, char* argv[]){
    action_init(argv[0]);
    FILE* fp = prep_fopen(REL_SETTINGS_FILENAME, "wb");
    fwrite(&defaults, sizeof(settings_t), 1, fp);
    fclose(fp);
    char filename[] = REL_SAVE_FILENAME_PFX;
    for (int i = 0; i<SAVE_FILES; i++) {
        filename[10] = i+'1';
        fclose(prep_fopen(filename, "wb"));
    }
    return 0;
}