section .data
	msg: db "%d",0xa
section .bss
	v resb 100
	cont resb 4
section .text
	global main
	extern printf
main:
	mov [cont],DWORD 0
	
	mov [v],DWORD 2
	mov [v+1],DWORD 100
	mov [v+2],DWORD 19
	mov [v+3],DWORD 36
	mov [v+4],DWORD 38
	mov [v+5],DWORD 32
	mov [v+6],DWORD 38
	mov [v+7],DWORD 39
	mov [v+8],DWORD 43
	mov [v+9],DWORD 25
	mov [v+10],DWORD 34
	mov [v+11],DWORD 16
	mov [v+12],DWORD 16
	mov [v+13],DWORD 12
	mov [v+14],DWORD 48
	mov [v+15],DWORD 30
	mov [v+16],DWORD 46
	mov [v+17],DWORD 17
	mov [v+18],DWORD 40
	mov [v+19],DWORD 46
	mov [v+20],DWORD 26
	mov [v+21],DWORD 17
	mov [v+22],DWORD 24
	mov [v+23],DWORD 48
	mov [v+24],DWORD 39
	mov [v+25],DWORD 27
	mov [v+26],DWORD 23
	mov [v+27],DWORD 48
	mov [v+28],DWORD 34
	mov [v+29],DWORD 26
	mov [v+30],DWORD 22
	mov [v+31],DWORD 47
	mov [v+32],DWORD 42
	mov [v+33],DWORD 12
	mov [v+34],DWORD 45
	mov [v+35],DWORD 19
	mov [v+36],DWORD 17
	mov [v+37],DWORD 37
	mov [v+38],DWORD 13
	mov [v+39],DWORD 49
	mov [v+40],DWORD 11
	mov [v+41],DWORD 44
	mov [v+42],DWORD 17
	mov [v+43],DWORD 28
	mov [v+44],DWORD 44
	mov [v+45],DWORD 43
	mov [v+46],DWORD 16
	mov [v+47],DWORD 46
	mov [v+48],DWORD 23
	mov [v+49],DWORD 21
	mov [v+50],DWORD 19
	mov [v+51],DWORD 24
	mov [v+52],DWORD 15
	mov [v+53],DWORD 20
	mov [v+54],DWORD 22
	mov [v+55],DWORD 20
	mov [v+56],DWORD 21
	mov [v+57],DWORD 37
	mov [v+58],DWORD 44
	mov [v+59],DWORD 11
	mov [v+60],DWORD 40
	mov [v+61],DWORD 23
	mov [v+62],DWORD 14
	mov [v+63],DWORD 37
	mov [v+64],DWORD 23
	mov [v+65],DWORD 46
	mov [v+66],DWORD 12
	mov [v+67],DWORD 31
	mov [v+68],DWORD 26
	mov [v+69],DWORD 25
	mov [v+70],DWORD 45
	mov [v+71],DWORD 36
	mov [v+72],DWORD 12
	mov [v+73],DWORD 46
	mov [v+74],DWORD 39
	mov [v+75],DWORD 16
	mov [v+76],DWORD 47
	mov [v+77],DWORD 17
	mov [v+78],DWORD 44
	mov [v+79],DWORD 10
	mov [v+80],DWORD 38
	mov [v+81],DWORD 42
	mov [v+82],DWORD 40
	mov [v+83],DWORD 21
	mov [v+84],DWORD 37
	mov [v+85],DWORD 29
	mov [v+86],DWORD 14
	mov [v+87],DWORD 21
	mov [v+88],DWORD 24
	mov [v+89],DWORD 34
	mov [v+90],DWORD 20
	mov [v+91],DWORD 42
	mov [v+92],DWORD 23
	mov [v+93],DWORD 45
	mov [v+94],DWORD 42
	mov [v+95],DWORD 19
	mov [v+96],DWORD 34
	mov [v+97],DWORD 21
	mov [v+98],DWORD 31
	mov [v+99],DWORD 37
	
	xor cl,cl
	for1:
		cmp cl,99
		jge endfor1
			
		xor bl,bl
		for2:
			mov al,99
			sub al,cl
			
			cmp bl,al
			jge endfor2
			
			;push DWORD [cont]
			;push msg
			;call printf
			;pop edx
			;pop edx
			
			; bubble sort
			mov al,[v+esi]
			mov dl,[v+esi+1]
			
			cmp al,dl
			jle naoTroca
			
			; swap (if)
			;mov eax,[cont]
			;inc eax
			;mov [cont],eax
			
			mov [v+esi],dl
			mov [v+esi+1],al
			
			naoTroca:
			inc bl
			jmp for2
		endfor2:
		
		inc cl
		jmp for1
	endfor1:
	
	;mov edx,[v+396]
	;xchg [v],edx
	
	mov eax,1
	mov ebx,[cont]
	int 0x80
