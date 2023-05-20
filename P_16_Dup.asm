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

;vector_16 dword 20 2
variable_16 dword 3
.code
	main16 PROC
		;Lógica del Programa
		
		println "Ingrese El valor de la primera posicion: "
		call readint ;eax
		mov esi, 0
		;mov vector_16[esi], eax

		add esi, 4

		println "Ingrese El valor de la primera posicion: "
		call readint ;eax
		;mov vector_16[esi], eax

		exit	
	main16 ENDP
	END main16
