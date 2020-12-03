section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
	extern ___error

_ft_strdup :

	call _ft_strlen
	add rax, 1
	push rdi  ; save rdi into stack memory
	mov rdi, rax ; rdi = rax
	call _malloc ; rdi = malloc(rax)
	cmp rax, 0
	je error
	pop r8      ; get pushed rdi value
	mov rdi, rax ; set rdi = s1 for strcpy
	mov rsi, r8  ; set rsi = r8 == rsi = s2 for strcpy
	call _ft_strcpy ; copy rsi to rdi so rax = rdi
	ret
error :
	call ___error
	mov BYTE [rax], 12
	mov rax, 0
	ret
