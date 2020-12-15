#include <stdio.h>
#include "variance.h" 
#include "max.h"
#include "min.h"

int main(){

	int n=10;
	int m=0, t[10]={4,9,10,11,12,15,12,9,0,30};
	float a=0.0;
	max(t,n,&m);
	min(t,n,&m);
	variance(t,n,&a);
}
