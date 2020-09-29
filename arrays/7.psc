Algoritmo sin_titulo
	//7Introduzca 5 números a un arreglo y obtener e imprimir el mayor en el arreglo
	definir soporte, i, pc, limite, num como entero;
	limite = 5
	Dimension lista_numeros(limite)
	
	para i <- 1 hasta limite con paso 1 Hacer
		Escribir "Por favor ingrese un número: "
		leer num
		lista_numeros[i] = num
	FinPara
	
	soporte = lista_numeros[1]
	
	para i <- 1 hasta limite con paso 1 Hacer
		Si lista_numeros[i] > soporte Entonces
			soporte = lista_numeros[i]
		Fin Si
	FinPara
	
	Escribir "El número mayor es: " soporte
	
	
FinAlgoritmo
