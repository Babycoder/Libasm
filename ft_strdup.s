section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
	extern ___error

_ft_strdup :

	call _ft_strlen
	add rax, 1
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je error
	pop r8
	mov rdi, rax
	mov rsi, r8
	call _ft_strcpy
	ret
error :
	mov rax, -1
	ret
