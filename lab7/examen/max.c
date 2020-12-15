#include <stdio.h>

void max(int t[], int n,int * max){
	int i=0;
    

	for(i=0;i<n;i++){

		if (t[i]>*max){
			max= &t[i];

		}else{
			max= max;}
	}
	printf("%d\n",*max);

}


