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
vector_2 byte 10,20,30,40,50

.code
	main2 PROC
		;L�gica del Programa
		; esi / edi regristos para intercambiar con indices

		mov esi, 0
		mov eax, 0
		mov al, vector_2[esi]
									;investigar porque da
		call writedec

		
		exit	

	main2 ENDP

	END main2
