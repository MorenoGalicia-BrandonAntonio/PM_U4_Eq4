TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables
vector_E2 dword 10, 9, 4, 1, 3, 4

.code
	mainE2 PROC
		;L�gica del Programa
		
		 println "El promedio es:"
		
		mov esi, 0
		mov ebx, vector_E2[esi] 

		mov eax, sizeof vector_E2
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		push ecx
		mov eax, 0

		cicloprom:
		mov ebx, vector_E2[esi]
		add eax, ebx
		add esi, 4
		
		loop cicloprom

		pop ebx
		div ebx
		call writedec
		
		exit	
	mainE2 ENDP
	END mainE2
