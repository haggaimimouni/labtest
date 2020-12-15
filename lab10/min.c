#include <stdio.h>

void min(int t[], int n,int * min){
	int i=0;
    

	for(i=0;i<n;i++){

		if (t[i]<*min){
			min= &t[i];

		}else{
			min= min;}
	}
	printf("%d\n",*min);

}
