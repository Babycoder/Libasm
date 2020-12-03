section .text
	global _ft_strcpy

_ft_strcpy :
	mov rax, 0 ;index = 0
	jmp loop   ; go to loop lable
loop :
	cmp	BYTE [rsi + rax], 0 ; if s2[i] == '\0'
	je return				; go to return label
	mov cl, BYTE [rsi + rax] ; cl = s2[i];
	mov BYTE [rdi + rax], cl  ; s1[i] = cl;
	inc rax					; index++
	jmp loop				; go to loop again

return :
	mov cl, 0  ; cl = '\0'
	mov BYTE [rdi + rax], cl ; put '\0' at the end of string
	mov	rax, rdi			; rax is return value so rax = s1 === rax = rdi
	ret
