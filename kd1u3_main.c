#include <stdio.h>
#include "kd1u3.h"
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Nepieciesami tris komandringas argumenti: 1. simbolu virkne, ko mainia,\
               2. virkne, kas maina, 3. virkne uz ko maina");
        return 0;
    }

    if(strlen(argv[2]) != strlen(argv[3])) {
        printf("2. un 3. simbolu virknem jabut vienada garuma");
        return 0;
    }

    char *T = strdup(argv[1]);
    char *S0 = strdup(argv[2]);
    char *S1 = strdup(argv[3]);

    replace(T, S0, S1);
    printf("%s", T);

    return 0;
}