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
vector_19 byte "Maniana pagara 0x refrescos, luna!",0

.code
	main19 PROC
		;Lógica del Programa
		
		mov esi, 16 ;indice con la letra x

		call readchar ; cantidad de refrescos!!
		call writechar
		mov vector_19[esi], al
		call crlf

		;ejemplo 1
		;mov eax, 0
		;mov al, vector_19[esi]
		;call writechar

		;ejemplo2
		mov edx, offset vector_19
		call writestring

		exit	
	main19 ENDP
	END main19
