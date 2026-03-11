#include <string.h>
#include <gprolog.h>

PlBool first_occurrence(char *str, PlLong c, PlLong *pos) {
    char *p;
    p = strchr(str, c);

    if (p == NULL) {        /* C does not appear in A */
        return PL_FALSE;    /* fail */
    }                    

    *pos = p - str;         /* set the output argument */
    return PL_TRUE;         /* succeed */
}
