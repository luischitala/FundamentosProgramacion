Algoritmo tres_numeros
	
	definir num1, num2, num3,menu Como Entero
	Escribir "Bienvenido al programa"
	Repetir
		Escribir "Por favor ingrese un n�mero"
		Leer num1
		Escribir "Escriba otro por favor"
		Leer num2
		Escribir "Escribir ingrese el �ltimo n�mero"
		Leer num3
		Si num1 > num2 & num1 > num3
			Escribir "El primer n�mero es mayor que todos"
		FinSi
		Si num2 > num1 & num2 > num3
			Escribir "El segundo n�mero es mayor que todos"
		FinSi
		Si num3 > num1 & num3 > num2
			Escribir "El tercer n�mero es mayor que todos"
		FinSi
		Escribir "Para salir del programa presione 0"
		Leer menu
	Hasta Que menu = 0

	
	
FinAlgoritmo
