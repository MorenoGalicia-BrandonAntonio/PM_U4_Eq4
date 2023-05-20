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
vector_8 dword 10, 9, 4, 1, 3, 4

.code
	main8 PROC
		;Lógica del Programa
		
		mov esi, 0
		mov ebx, vector_8[esi]

		mov edx, 0
		mov eax, sizeof vector_8
		mov ecx, 4
		div ecx ;checar porque en ecx
		mov ecx, eax

		add esi, 4
		dec ecx ;en linea cuando decremente si cambia en la linea

		ciclo:
			cmp ebx, vector_8[esi]
			jg continuar
			add ebx, vector_8[esi]

			continuar:
			add esi, 4
				
		loop ciclo

		mov eax, ebx

		println "La Suma es: "
		call writedec
		
		exit	
	main8 ENDP
	END main8
