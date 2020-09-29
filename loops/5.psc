Algoritmo leerSacarPromedio
	//Realizar un algoritmo que lea 5 números, calcule la sumatoria y el promedio imprimir el promedio
	definir num,i,limite,total_numeros,sumatoria Como Entero
	definir promedio como real
	limite = 5
	sumatoria = 0
	promedio = 0
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
