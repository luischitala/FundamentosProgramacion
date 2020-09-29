Algoritmo suma5Numeros
	//Introduzca 5 números a un arreglo calcular la sumatoria e imprimir el promedio
	definir i,num,limite, sumatoria, arreglo_numeros Como Entero
	limite = 5
	
	dimension arreglo_numeros(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un número: "
		leer num
		arreglo_numeros[i] = num
	FinPara
	
	para i <- 1 hasta limite con paso 1 Hacer
		resultado = resultado + arreglo_numeros[i]
	FinPara
	
	Escribir "El resultado de la suma de los números ingresados es: " resultado
	
FinAlgoritmo
