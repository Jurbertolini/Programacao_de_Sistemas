section .data 					;seção em que declaro as minhas constantes
	mensagem: 	db 'Fala galerinha do canal', 0xa 			; Variável que 
	tamanhoMensagem: 	equ $-mensagem 						; conta o tamanho da mensagem

section .text
	global _main ; define onde começa o programa

	_main: 
	; PREPARAR PARA PRINTAR/ESCREVER NA TELA (sys.write)
	mov eax, 4 					;Copia para o eax o valor 4 (comando sys.write)
	mov ebx,  1 				;Copia para o ebx o valor 1 (arquivo de saída padão
	mov ecx, mensagem			;Copia para o ecx o valor da minha mensagem que eu vou printar
	mov edx, tamanhoMensagem	;Copia para edx a quantidade de caraceres que eu vou printar

	int 0x80 					;Pede para o kernel executar o comando

	mov eax, 1					;Copia para eax o valor 1 (comando sys.exit)
	mov ebx, 0					;Copia para o ebx o valor 0 (código de execução com sucesso)

	int 80h						;pede para o kernel executar o comando (= 0x80)
