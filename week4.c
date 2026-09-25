#include <stdio.h>
#define MULTIPLIER 10

void main(void){
    int a;
    int b;
    int c;
    int d;

    a=10;
    b=25;
    c=35;
    d=a+b+c;

    printf("The total is %d\n",d);
    printf("Multiplier applied makes the total %d\n",d*MULTIPLIER);

    return;
}