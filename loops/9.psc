Algoritmo tablaMultiplicar
	//Realizar un algoritmo que lea un n�mero e imprima la tabla de multiplicar de dicho numero
	definir num, i, num_limite,resultado Como Entero
	num_limite = 10
	Escribir "Bienvenido a la aplicaci�n de tablas de multiplicar"
	Escribir "Por favor ingrese un n�mero"
	leer num
	Escribir "La tabla de multiplicar de " num " es: "
	Para i <- 1 Hasta num_limite Con Paso 1 Hacer
		resultado = num * i
		Escribir num " * " i " = " resultado
	Fin Para
	
	
FinAlgoritmo
