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
vector_3 byte 10,20,30,40,50

.code
	main3 PROC
		;L�gica del Programa
		
		mov ecx, sizeof vector_3
		mov esi, 0

		ciclo:
		mov eax, 0
		mov al, vector_3[esi]
		call writedec
		call crlf
		inc esi
		loop ciclo

		call writedec
		

		exit	

	main3 ENDP

	END main3
