
             org 0A100h ; ���߱�����������ص�A100H��
start:
	mov ax,cs ; ͨ��AX��ת, ��CS��ֵ���͸�DS��ES
	mov ds,ax
	mov es,ax
	mov ss,ax

; ��ʾ�ַ���1 "MY-OS 1.0"����ʼ��
	mov ah,13h ; ���ܺ�
	mov al,1 ; ���ŵ���β
	mov bl,0bh ; ����
	mov bh,0 ; ��0ҳ
	mov dh,07h ; ��10��
	mov dl,2fh ; ��35��
	mov bp,str1 ; BP=����ַ
	mov cx,19 ; ����Ϊ9���ַ�
	int 10h ; ����10H���ж�
; ��ʾ�ַ���1��������
                jmp 07c00h

     str1: db 'wangyaning 17341152'
times 510-($-$$) db 0; ���ʣ�µĿռ䣬ʹ���ɵĶ����ƴ���ǡ��Ϊ512�ֽ�

dw 0xaa55; ������־