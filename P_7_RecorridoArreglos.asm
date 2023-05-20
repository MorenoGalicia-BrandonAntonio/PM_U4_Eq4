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
vector_7 dword 10, 9, 4, 1, 3, 4

.code
	main7 PROC
		;Lógica del Programa
		
		mov ebx, 0

		mov edx, 0
		mov eax, sizeof vector_7
		mov ecx, 4
		div ecx
		mov ecx, eax

		mov esi, 0

		ciclo:
			add ebx, vector_7[esi]
			add esi, 4

		loop ciclo

		mov eax, ebx

		println "La Suma es: "
		call writedec
		
		exit	
	main7 ENDP
	END main7
