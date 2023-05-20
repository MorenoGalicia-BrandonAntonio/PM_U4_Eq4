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
vector_9 dword 10, 9, 4, 1, 3, 4

.code
	main9 PROC
		;Lógica del Programa
		
		mov esi, 0
		mov ebx, vector_9[esi]

		mov edx, 0
		mov eax, sizeof vector_9 ;lee cuantos bytes tiene el arreglo
		mov ecx, 4 ;lo divide entre 4 porque cada valor tiene 4 bytes
		div ecx ;checar porque en ecx
		mov ecx, eax

		add esi, 4
		dec ecx ;en linea cuando decremente si cambia en la linea

		ciclo:
			cmp ebx, vector_9[esi]
			jl continuar
			add ebx, vector_9[esi]

			continuar:
			add esi, 4
				
		loop ciclo

		mov eax, ebx

		println "El Valor Menor es: "
		call writedec
		
		exit	
	main9 ENDP
	END main9
