#include <stdio.h>
#include <math.h>
#include "min.h"
#include "max.h"
#include "variance.h"


int main(){

 int t[7]={13,12,5,1,19,13,17};
int n=10;
float m=10.0,a=0.0;
max(t,7,&n);
min(t,7,&n);
variance(t,7,&m);
ceil(35.000000);
floor(35.000000);
}

