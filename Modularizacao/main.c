#include<stdio.h>
#include "matematica.h"

int main(){
	float notas[3] = {7.0, 10.0, 8.0};
	
	float media = calculaMedia(notas, 3);
	printf("A media do aluno foi %.1f\n", media);

	return 0;
}

