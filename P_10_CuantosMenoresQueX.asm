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
vector_10 dword 10, 9, 4, 1, 3, 4

.code
	main10 PROC
		;Lógica del Programa
		
		println "Cual es el Valor de X: "
		call readint

		mov ebx, eax

		mov eax, sizeof vector_10
		mov ecx, 4
		mov edx, 0 
		div ecx 
		mov ecx, eax

		mov eax, 0

		mov esi, 0

		ciclo:
			cmp ebx, vector_10[esi]
			jg continuar
			inc eax

			continuar:
			add esi, 4
		loop ciclo
		
		call writedec
		
		;programa 1.- calcular el vector que se genera del cuadrado de todos los elementos de un vector
		;programa 2.- calcular el promedio de los elemetos de un vector
		;programa 3.- contar cuantos elementos son pares en un vector
		;programa 4.- invertir los elementos de un vector

		exit	
	main10 ENDP
	END main10
