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
;vector_15 dword 20 dub 'A'

.code
	main15 PROC
		;Lógica del Programa
		
		 ;println "Ingrese El valor de la primera posicion: "
		;call readint ;eax

		mov esi, 0

		;mov vector_15[esi], eax
		
		exit	
	main15 ENDP
	END main15
