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
vector_E4 dword 10, 9, 4, 1, 3, 4

.code
	mainE4 PROC
		;Lógica del Programa
		
		 println "El vector invertido es: "
		
		mov esi, 0
		mov ebx, vector_E4[esi] 

		mov eax, sizeof vector_E4
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		
		mov eax, 0 ; iniciando eax en 0
		mov edx, ecx

		ciclo:
		mov eax, vector_E4[esi]
		push eax
		add esi, 4

		loop ciclo

		mov ecx, edx
		mov esi, 4

		ciclo2:
		pop eax
		mov vector_E4[esi], eax
		add esi, 4
		
		loop ciclo2
		
		mov ecx, edx
		mov esi, 4

		ciclo3:
		mov eax, vector_E4[esi]
		call writedec
		println ", "
		add esi, 4

		loop ciclo3


		
		exit	
	mainE4 ENDP
	END mainE4
