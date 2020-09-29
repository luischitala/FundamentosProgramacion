Algoritmo numerosARregloPos
	//Introduzca 5 números a un arreglo e imprimir la posición y el número que está en 
	//esa posición del arreglo
	definir i,num, limite,lista_numeros Como Entero
	limite = 5
	
	Dimension  lista_numeros(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un número"
		leer num
		lista_numeros[i] = num
		
		
	FinPara
	
	para i <- 1 hasta limite con paso 1 Hacer
		Escribir "El número en la posición: " i " es: " lista_numeros[i]
	FinPara
FinAlgoritmo
