; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data
str1 BYTE "BACKGROUND COLOR",0

.code
main proc
	mov eax, yellow + (red * 16)
	CALL WRITEINT
	CALL SETTEXTCOLOR
	mov edx , OFFSET str1
	CALL WRITESTRING
	CALL CRLF

	invoke ExitProcess,0
main endp
end main