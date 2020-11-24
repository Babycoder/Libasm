section .text
	global _ft_strcpy

_ft_strcpy :
	mov rax, 0
	jmp loop
loop :
	cmp	BYTE [rsi + rax], 0
	je return
	mov cl, BYTE [rsi + rax]
	mov BYTE [rdi + rax], cl 
	inc rax
	jmp loop

return :
	mov cl, 0
	mov BYTE [rdi + rax], cl
	mov	rax, rdi
	ret
