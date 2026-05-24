#include "cachelab.h"

#include <stdio.h>

#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>


int time,s, E, b, setIndexLen, blockLen;
char traceFile[200];

void findSlot()
{
    ;
}

void solve()
{
    ;
}

int main(int argc, char *argv[])
{
    int opt;
    while ((opt = getopt(argc, argv, "s:E:b:t:")) != -1) 
    {
        switch (opt) 
        {
            case 's':
                s = atol(optarg);
                break;
            case 'E':
                E = atol(optarg);
                break;
            case 'b':
                b = atol(optarg);
                break;
            case 't':
                snprintf(traceFile, sizeof(traceFile), "%s", optarg);
                break;
            case '?':
                printf("Unknown\n");
                break;
            default:
                break;
        }
    }

    printSummary(0, 0, 0);
    return 0;
}
