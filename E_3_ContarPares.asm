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
vector_E3 dword 10, 9, 4, 1, 3, 4
contador_E3 dword 0

.code
	mainE3 PROC
		;Lógica del Programa
		
		 println "Tienes "
		
		mov esi, 0
		mov ebx, vector_E3[esi] 

		mov eax, sizeof vector_E3
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		
		mov eax, 0 ; iniciando eax en 0

		ciclopar:
		mov eax, vector_E3[esi]  ; guardamos el valor de la posicion en eax
		mov ebx, 2 ; inicializamos ebx en 2
		mov edx, 0 ; residuo
		div ebx ; para obtener residuo
		cmp edx, 0 ; revisa si el residuo es 0
		je par ; Si es 0

		jmp salir

		par:
		inc contador_E3
		salir:
		add esi, 4
		
		loop ciclopar
		mov eax, contador_E3
		call writedec
		println " pares."

		
		exit	
	mainE3 ENDP
	END mainE3
