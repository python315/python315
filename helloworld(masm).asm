assume cs:code,ds:date
 
date segment  
str db 'Hello World!',10,'13','$'
date ends
 
code segment
	 start: 
	 mov ax,date
	 mov ds,ax
	 lea dx,str
	 mov ah,9 
	 int 21H
 
	mov ax,4c00H
	int 21H
	code ends
end start
