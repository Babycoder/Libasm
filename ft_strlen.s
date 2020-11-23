; nasm -f macho64 ft_strlen.s && gcc -o exec main.c ft_strlen.o && ./exec

section .text
	global _ft_strlen

_ft_strlen:
		mov		rax, -1				; i = -1
while:	add		rax, 1					; i++
		mov		cl, byte [rdi + rax]	; cl = str[i]
		cmp		cl, 0				; if cl == \0
    	jne		while				; if not zero then loop
		ret
