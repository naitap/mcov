org 07c00h
mov ax,cs
mov ds,ax
mov es,ax
call DispStr
jmp $

DispStr:
  mov ax,BootMessage
  mov bp,ax
  mov cx,12
  mov ax,01301h
  mov bx,000fh
  mov dl,0
  int 10h
  ret
BootMessage:  db "My first OS!"
times 510-($-$$) db 0

dw 0xaa55