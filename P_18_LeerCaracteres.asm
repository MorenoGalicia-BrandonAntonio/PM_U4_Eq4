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
vector_18 dword 30 dup(?)
variable_18 dword 3
.code
	main18 PROC
		;Lógica del Programa
		
		mov ecx, 4

		mov esi, 0

		ciclo:
			call readint
			mov vector_18[esi], eax
			add esi, 4
		loop ciclo

		mov edx, offset vector_18
		call writestring 


		exit	
	main18 ENDP
	END main18
