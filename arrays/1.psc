Algoritmo numerosArreglo3
	//Introduzca 5 n�meros a un arreglo e imprimir el n�mero que est� en la posici�n 3
	
	definir i, limite, num Como Entero
	Escribir "Bienvenido, ingrese 5 n�meros por favor"
	limite = 5
	
	dimension lista_numeros(limite)
	
	Para  i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un n�mero"
		leer num
		
		lista_numeros[i] = num
	Fin Para
	
	Escribir "El n�mero en la posici�n 3 es: " lista_numeros[3]
	
FinAlgoritmo
