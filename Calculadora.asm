section .data
    msg db "Resultado: "
    len_msg equ $-msg
    
section .bss
    n1 resb 2
    n2 resb 2
    char resb 2
    resultado resb 2
    
section .text
    global _start
    
_start:
;ler n1    
    mov eax, 3
    mov ebx, 0 
    mov ecx, n1
    mov edx, 1 
    
    int 80h
    
;ler char
    mov eax, 3 
    mov ebx, 0 
    mov ecx, char
    mov edx, 1 
    int 80h
    
; ler n2    
    mov eax, 3
    mov ebx, 0 
    mov ecx, n2
    mov edx, 1 
    
    int 80h

; coverter n1 e n2 de ascii
    mov al, [n1]
    sub al, '0'
    mov bl, al
    
    mov al, [n2]
    sub al, '0'
    
; comparar operador

    cmp byte [char], '+'
    je Soma
    
    cmp byte [char], '-'
    je Subtracao
    
    cmp byte [char], '/' 
    je Divisao
    
    cmp byte [char], '*'
    je Multiplicacao

Soma:
    add al, bl

    jmp Print_resultado
    
Subtracao:
    sub al, bl
    jmp Print_resultado
    
Divisao:
    div bl
    jmp Print_resultado

Multiplicacao:
    mul bl
    jmp Print_resultado

Print_resultado:  
    add al, '0'
    mov [resultado],  al
    
    mov eax, 4
    mov ebx, 1 
    mov ecx, msg
    mov edx, len_msg
    
    int 80h
    
    mov eax, 4
    mov ebx, 1 
    mov ecx, resultado
    mov edx, 1
    
    int 80h
    
Fim_programa:
    mov eax, 1
    mov ebx, 0
    
    int 0x80
