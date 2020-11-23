  section .text
	global _ft_strcmp

_ft_strcmp:
	mov		al, BYTE [rdi]  ; al = rdi[0] move first byte of rdi in al (al registe 1 BYTE)
	mov		cl, BYTE [rsi]	; bl = rsi[0] move first byte of rdi in bl (bl registe 1 BYTE)
	cmp		al, 0			; if (al == '\0)
	je		exit			; if true then exit
	cmp		cl, 0			
	je		exit
	cmp		al, cl			; compare al with cl
	jne		exit			; jump if no equal (al != cl) to exit
	inc		rdi				; rdi++
	inc		rsi				; rsi++
	jmp		_ft_strcmp	

exit:
	movzx   rax, al
	movzx	r8, cl
	sub		rax, r8			; rax = rax - r8
	ret
