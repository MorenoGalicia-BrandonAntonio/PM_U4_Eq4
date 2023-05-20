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
vector_E1 dword 10, 9, 4, 1, 3, 4

.code
	mainE1 PROC
		;Lógica del Programa
		
		println "El cuadrado de los elementos de tu vector es: "
		
		mov esi, 0
		mov ebx, vector_E1[esi] 

		mov eax, sizeof vector_E1
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		

		ciclo_calculo:
		mov eax, vector_E1[esi]
		mov ebx, eax
		mul ebx ; multiplicar eax por sí mismo (almacena el resultado en edx:eax)
		mov vector_E1[esi], eax
		add esi, 4
		
		call writedec		
		println ","
		
		loop ciclo_calculo
		
		exit	
	mainE1 ENDP
	END mainE1
