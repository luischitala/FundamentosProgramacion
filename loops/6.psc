Algoritmo leerNNumerosSumaPromedio
	// Escribir un algoritmo que lea N números y calcule la sumatoria y el promedioe imprima el
	definir num, i, total_numeros, sumatoria Como Entero
	definir promedio, limite como real
	sumatoria = 0
	promedio = 0
	limite = 0
	
	Escribir "Por favor ingrese el numero limite "
	Leer limite
	Dimension total_numeros(limite)
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un número"
		Leer num
		total_numeros[i] = num
		sumatoria = sumatoria + total_numeros[i]
	Fin Para
	
	promedio = sumatoria / limite
	
	
	Escribir "El promedio de los " limite " números que ingresó es: " promedio

	
	
FinAlgoritmo
