section .text
	global _ft_read
	extern ___error

_ft_read :
	mov rax, 0x2000003
	syscall
	jc exit
	ret
exit :
	mov r8, rax
	call ___error
	mov [rax], r8
	mov rax, -1
	ret
