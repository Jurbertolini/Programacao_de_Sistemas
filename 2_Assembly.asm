section .data
	msg db 'O resultado da soma é: '
	len equ $-msg
	quebra db 0xa

section .bss 
	resultado resb 1 ; reserva 1 byte para eventual uso
section .text
	global _main

_main
	;SOMAR OS NUMEROS
	mov eax, 3
	mov ebx, 4
	add eax, ebx ; pego o valor do ebs, somo com o valor do eax e armazeno no eax (eax fica com o resultado)

	;CONVERTER O RESULTADO PARA STRING
	add eax,'0' ;adicionar 0 caractere 0 transforma o numero inteiro em string (?????)
	mov [resultado], eax 

	;PRINTAR PRIMEIRA MENSAGEM
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len

	int 0x80

	;PRINTAR O RESULTADO
	mov eax, 4
	mov ebx, 1
	mov ecx, resultado
	mov edx, 1

	int 0x80

	;PRINTAR A QUEBRA DE LINHA
	mov eax, 4
	mov ebx, 1
	mov ecx, quebra
	mov edx, 1

	int 0x80

	;TERMINA O PROGRAMA
	mov eax, 1
	mov ebx, 0

	int 0x80
