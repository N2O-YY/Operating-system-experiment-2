
             org 0A100h ; 告诉编译器程序加载到A100H处
start:
	mov ax,cs ; 通过AX中转, 将CS的值传送给DS和ES
	mov ds,ax
	mov es,ax
	mov ss,ax

; 显示字符串1 "MY-OS 1.0"（开始）
	mov ah,13h ; 功能号
	mov al,1 ; 光标放到串尾
	mov bl,0bh ; 亮绿
	mov bh,0 ; 第0页
	mov dh,07h ; 第10行
	mov dl,2fh ; 第35列
	mov bp,str1 ; BP=串地址
	mov cx,19 ; 串长为9个字符
	int 10h ; 调用10H号中断
; 显示字符串1（结束）
                jmp 07c00h

     str1: db 'wangyaning 17341152'
times 510-($-$$) db 0; 填充剩下的空间，使生成的二进制代码恰好为512字节

dw 0xaa55; 结束标志