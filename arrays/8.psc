Algoritmo sin_titulo
	//Introduzca 5 n�meros a un arreglo y encontrar e imprimir la posici�n donde se
	//encuentra el mayor en el arreglo
	definir indice, soporte, i, limite, num como entero;
	limite = 5
	Dimension lista_numeros(limite)
	
	para i <- 1 hasta limite con paso 1 Hacer
		Escribir "Por favor ingrese un n�mero: "
		leer num
		lista_numeros[i] = num
	FinPara
	
	soporte = lista_numeros[1]
	
	para i <- 1 hasta limite con paso 1 Hacer
		Si lista_numeros[i] > soporte Entonces
			soporte = lista_numeros[i]
			indice = i
		Fin Si
	FinPara
	Escribir "El �ndice del n�mero mayor es: " indice
	Escribir "Hola"
	
	
	
FinAlgoritmo
