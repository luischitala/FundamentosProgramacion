Algoritmo numerosArreglo3
	//Introduzca 5 números a un arreglo e imprimir el número que está en la posición 3
	
	definir i, limite, num Como Entero
	Escribir "Bienvenido, ingrese 5 números por favor"
	limite = 5
	
	dimension lista_numeros(limite)
	
	Para  i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un número"
		leer num
		
		lista_numeros[i] = num
	Fin Para
	
	Escribir "El número en la posición 3 es: " lista_numeros[3]
	
FinAlgoritmo
