;Fibonacci Series
DHRUV SEGMENT
	N DB 07H
	DATA DB 7 DUP(?)
DHRUV ENDS
GANDHI SEGMENT
ASSUME CS:GANDHI,DS:DHRUV
START:
	MOV AX,DHRUV
	MOV DS,AX
	LEA DI,DATA
	MOV CL,N
	INC CL
	MOV [DI],0H
	INC DI
	MOV [DI],1H
	INC DI
	L1:
		CMP CL,0H
		JLE EXIT	;LESS THAN EQUAL
		MOV BL,[DI-1]
		ADD BL,[DI-2]
		MOV [DI],BL
		DEC CL
		INC DI
	LOOP L1
	EXIT:
	MOV AX,04H
	INT 21H
GANDHI ENDS
END START
END
