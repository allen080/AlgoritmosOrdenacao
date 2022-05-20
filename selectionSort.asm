section .data
	msg db "%d",0xa
section .bss
	v resb 40 ; int v[10]
section .text
	extern printf
	global main
main:
	mov [v], DWORD 3
	mov [v+4], DWORD -4	
	mov [v+8], DWORD 55	
	mov [v+12], DWORD 1	
	mov [v+16], DWORD 5
	mov [v+20], DWORD 31	
	mov [v+24], DWORD 14	
	mov [v+28], DWORD 26	
	mov [v+32], DWORD 3	
	mov [v+36], DWORD 18
	
	mov edi,0
	for: ; primeiro for(edi=0)
		cmp edi,40
		je endfor
		
		; buscar o menor
		mov edx, edi ; minElem = 1		

		mov esi, edi
		add esi, 4
		for2: ; for(esi=edi+4)
			cmp esi,40
			je endfor2
			
			mov eax,[v+esi]
			cmp eax,[v+edx] ; verifica o menor
			jge naoEhMenor
			
			mov edx, esi

			naoEhMenor:
			add esi,4
			jmp for2
		endfor2:
		
		; faz o swap
		mov eax, [v+edi]			
		xchg [v+edx],eax
		mov [v+edi],eax

		add edi,4
		jmp for
	endfor:
	
	; imprime os valores
	mov edi,0
	for3:
		cmp edi,40
		je endfor3
		
		push DWORD [v+edi]
		push msg
		call printf
		add esp,8

		add edi,4
		jmp for3
	endfor3:
	
	; encerra o programa
	mov eax,1
	mov ebx,0
	int 0x80
