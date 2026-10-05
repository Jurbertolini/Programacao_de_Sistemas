#include<stdio.h>
#include "Calculos.h"
int main(){
	float n1, n2;
	char c;
	
	printf("Digite n1: ");
	scanf("%f", &n1);
	printf("Digite a operacao (+, -, *, /): ");
	scanf(" %c", &c);
	printf("Digite n2: ");
	scanf("%f", &n2);
	
	if(c == '+'){
		somar(n1, n2);
	}
	else if(c == '-'){
		subtrair(n1, n2);
	}
	else if(c == '*'){
		multiplicar(n1, n2);
	}
	else if(c == '/'){
		dividir(n1, n2);
	}
	else{
		printf("Operacao ivalida!");
	}
}
