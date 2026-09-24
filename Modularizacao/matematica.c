#include "matematica.h"

float calculaMedia (float numeros[], int qtd){
	int i;
	float soma = 0;
	for(i = 0; i < 3; i++){
		soma += numeros[i];
	}
	return soma/3;
}
