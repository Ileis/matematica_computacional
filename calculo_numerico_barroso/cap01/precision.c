#include <stdio.h>
#include <stdlib.h>

int main()
{
    double x =  1, xx = 0;

    do 
    {
        x /= 2;
        xx = 1.0 + x;
    }
    while(xx > 1.0F);

    printf("value: %.32f", x);

    return EXIT_SUCCESS;
}