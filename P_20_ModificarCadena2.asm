TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; Área de Declaración de Variables
vector_20 byte "El resultado es: xx.!",0

.code
	main20 PROC
		;Lógica del Programa
		
		mov esi, 17 ;indice con la letra x

		;--------------------------------
		mov eax, 12 ;xx

		mov ebx, 10
		mov edx,0

		div ebx ; eax=1 edx=2
		;-------------------------------

		add ebx, 48 ; 48=0
		mov vector_20[esi], al

		inc esi

		mov eax, edx ; pasa el 2 a eax
		add ebx, 48  ; 48=0
		mov vector_20[esi], al
		;----------------------------------

		call crlf
		mov edx, offset vector_20
		call writestring

		exit	
	main20 ENDP
	END main20
