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
;vector_15 dword 20 dub 'A'

.code
	main15 PROC
		;L�gica del Programa
		
		 ;println "Ingrese El valor de la primera posicion: "
		;call readint ;eax

		mov esi, 0

		;mov vector_15[esi], eax
		
		exit	
	main15 ENDP
	END main15
