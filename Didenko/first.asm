.586p
.MODEL FLAT, C
.CODE
PUBLIC C first
first PROC C numbers: dword, numbersSize: dword, res: dword, xmin: dword

push esi
push edi
mov edi, numbers 
mov ecx, numbersSize
mov esi, res 

for_:
	mov eax, [edi] ; �������� � eax ��������� �������
	sub eax, xmin ; ������� ��� ������
	mov ebx, [esi + 4*eax]
	inc ebx ; ����������� �������� �� ������� �� 1
	mov [esi + 4*eax], ebx ; �������� � �������. ������
	add edi, 4 ; ��������� � ��.��������
	loop for_ ; ���� ecx != 0

pop edi
pop esi
ret
first ENDP
END  