section .data
	msg_engual db "eh engual"
	msg_engual_len equ $-msg_engual

	msg_deferente db "Não eh engual"
	msg_deferente_len equ $-msg_deferente

section .text
	global _start

_start:
	mov eax, 2

	cmp eax, 1
	je eh_igual 		;jump se for equals 

	jmp eh_diferente

eh_igual: 		;é uma label, não blocos de codigo, o assembly executa tudo mesmo sem chamar
	mov eax, 4 			;comando system_write
	mov ebx, 1 			;valor de onde escrever (1 = saida padrão - terminal)
	mov ecx, msg_engual
	mov edx, msg_engual_len

	int 0x80

	jmp fim_programa

eh_diferente:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg_deferente
	mov edx, msg_deferente_len

	int 0x80

fim_programa:
	mov eax, 1
	mov ebx, 0
	int 0x80

