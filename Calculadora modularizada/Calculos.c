#include<stdio.h>
#include "Calculos.h"
float resultado;
void somar (float n1, float n2){
	resultado = n1 + n2;
	printf("%f", resultado);
}
void subtrair(float n1, float n2){
	resultado = n1 - n2;
	printf("%f", resultado);
}
void dividir(float n1, float n2){
	resultado = n1 / n2;
	printf("%f", resultado);
}
void multiplicar(float n1, float n2){
	resultado = n1 * n2;
	printf("%f", resultado);
}
