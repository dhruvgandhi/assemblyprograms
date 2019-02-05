dhruv segment
	msg db 'Its a palindrome$'
	msg2 db 'Not a palindrome$'
	s1 db 'monm'
	s2 db 3 dup(?)
	len dw 3h
dhruv ends
gandhi segment
assume cs:gandhi,ds:dhruv
start:
	mov ax,dhruv
	mov ds,ax
	lea si,s1
	lea di,s1
	add di,len
	mov cx, len
	cld
	lx:
		mov al,[si]
		cmp al,[di]
		je l2
		dec di
		inc si
	loopnz lx
		mov ah,09h
		mov dx, offset msg
		int 21h
		jmp exit
		
	l2:
		mov ah,09h
		mov dx, offset msg2
		int 21h
	exit:mov ah,4ch
	int 21h
gandhi ends
end start
end
