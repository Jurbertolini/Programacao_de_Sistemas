section .data
    msg_1 db "Digite o N1: "
    len_msg1 equ $-msg_1
    
    msg_2 db "Digite o N2: "
    len_msg2 equ $-msg_2
    
    msg_3 db "Digite a Operacao (+, -, *, /): "
    len_msg3 equ $-msg_3
    
    quebra db 0xa
    
section .bss
    n1 resb 1
    n2 resb 1
    char resb 2
    resultado resb 1
    
section .text
    global _start
    
_start:
;print msg 1
    mov eax, 4
    mov ebx, 1 
    mov ecx, msg_1
    mov edx, len_msg1
    
    int 0x80
;ler n1    
    mov eax, 3
    mov ebx, 0 
    mov ecx, n1
    mov edx, 1 
    
    int 80h
    
;quebra
    mov eax, 4
    mov ebx, 1 
    mov ecx, quebra
    mov edx, 1
  
    int 80h
    
;print msg 2    
    mov eax, 4
    mov ebx, 1 
    mov ecx, msg_2
    mov edx, len_msg2
    
    int 0x80
    
; ler n2    
    mov eax, 3
    mov ebx, 0 
    mov ecx, n2
    mov edx, 1 
    
    int 80h
    
;print n2
    mov eax, 4
    mov ebx, 1 
    mov ecx, n2
    mov edx, 1 
    
    int 80h
    
;print n1
    mov eax, 4
    mov ebx, 1 
    mov ecx, n1
    mov edx, 1
    
    int 80h
Fim_programa:
    mov eax, 1
    mov ebx, 0
    
    int 0x80
