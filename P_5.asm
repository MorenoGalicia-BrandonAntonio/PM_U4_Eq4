TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables
vector_5 byte 1, 2, 3, 4, 5
		 byte 6, 7, 8, 9, 10
		 byte 11, 12, 13, 14, 15

.code
	main5 PROC
		;L�gica del Programa
		
		mov esi, 0
		mov edi, 0
		mov eax, 0
		mov al, vector_5[esi + edi]
		call writedec
		

		exit	

	main5 ENDP

	END main5
