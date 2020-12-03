  section .text
	global _ft_strcmp

_ft_strcmp:
	mov		al, BYTE [rdi]  ; al = rdi[0] 
	mov		cl, BYTE [rsi]	; bl = rsi[0]
	cmp		al, 0			; if (al == '\0)
	je		exit			; if true then exit
	cmp		cl, 0			
	je		exit
	cmp		al, cl			; compare al with cl
	jne		exit			; go to exit  if no equal (al != cl)
	inc		rdi				; rdi++
	inc		rsi				; rsi++
	jmp		_ft_strcmp	

exit:
	
	movzx   rax, al
	movzx	r8, cl
	cmp		rax, r8
	jg      returnp
	jl		returnn
	mov		rax, 0
	ret

returnp :
	mov rax, 1
	ret

returnn :
	mov rax, -1
	ret
