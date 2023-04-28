		.ORIG	x3000
		AND R0, R0, #0
		AND	R1, R1, #0
		AND	R2, R2, #0
		LD R3, ASCII
		LEA R1, hello
lp		LDR R0, R1, #0
		BRz finish
		ADD R1, R1, #1
		NOT R4, R3
		ADD R5, R4, R0
		ADD R5, R5, #1
		BRn NEXT
		ADD R5, R5, #-9
		BRp NEXT
		ADD R2, R2, #1
		ADD R0, R0, R3
		ADD R5, R0, #4
NEXT	BRnzp lp
finish	ADD R2, R2, #3
		ADD R0, R2, R3
		TRAP x21
		HALT
ASCII	.FILL x0030
hello	.STRINGZ "ABCD123"
		.END