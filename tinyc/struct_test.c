#include <stdio.h>
 
/* a struct with some bytes and a length */
typedef struct Test {
    int length;
    unsigned char *bytes;
} Test;
 
/* some globals */
 
#ifdef STANDALONE
Test test = {10, "standalone"};
#else
Test test = {26, "abcdefghijklmnopqrstuvwxyz"};
#endif
 
int value = 12345;
 
int main(int argc, char **argv) {
    int i;
    char **pos = argv;
 
    printf("Hello Tiny C!\n");
 
    /* list arguments */
    for (i=0; i<argc; ++i, ++pos) {
        printf("arg %d: %s\n", i, *pos);
    }
 
    /* byte printing the hard way ;) */
    printf("test.value: '");
    for (i=0; i<test.length; ++i)
        printf("%c", *(test.bytes+i));
    printf("'");
 
 
    if (*test.bytes == 'a')
        printf(" - not so impressive.\n");
    else if (*test.bytes == 's')
        printf(" - ok.\n");
    else
        printf(" - Busted!\n");
    return 0;
}