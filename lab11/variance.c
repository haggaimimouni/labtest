#include <stdio.h>

void variance(int t[], int n, float *var){

	int i,somme=0,moy=0;
	for (i=0;i<n;i++){
		moy=moy+t[i];
	}
	moy=moy/n;
	for (i=0;i<n;i++){
		somme=somme+(t[i]-moy)*(t[i]-moy);
	}
	*var=somme/n;
	printf("%f\n",*var);
}
