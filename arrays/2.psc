Algoritmo numerosARregloPos
	//Introduzca 5 n�meros a un arreglo e imprimir la posici�n y el n�mero que est� en 
	//esa posici�n del arreglo
	definir i,num, limite,lista_numeros Como Entero
	limite = 5
	
	Dimension  lista_numeros(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un n�mero"
		leer num
		lista_numeros[i] = num
		
		
	FinPara
	
	para i <- 1 hasta limite con paso 1 Hacer
		Escribir "El n�mero en la posici�n: " i " es: " lista_numeros[i]
	FinPara
FinAlgoritmo
