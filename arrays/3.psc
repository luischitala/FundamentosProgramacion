Algoritmo numerosArregloDescendente
	//Introduzca 5 n�meros a un arreglo e imprimir la posici�n en orden descendente y el
	//n�mero que est� en esa posici�n 
	definir i, a, soporte, arreglo_numeros, limite, num Como Entero
	Escribir "Bienvenido, por favor ingrese la cantidad de n�meros a ingresar"
	Leer limite
	dimension arreglo_numeros(limite)
	
	
	para i = 1 hasta limite con paso 1 Hacer
		Escribir "Ingrese un n�mero"
		Leer num
		arreglo_numeros[i] = num
	FinPara
	
	para i <- 1 hasta limite con paso 1 Hacer
		para a <- 1 hasta limite-1 con paso 1 Hacer
			si arreglo_numeros[a] < arreglo_numeros[a+1] Entonces
				soporte = arreglo_numeros[a]
				arreglo_numeros[a] = arreglo_numeros[a+1]
				arreglo_numeros[a+1] = soporte
			FinSi		
		FinPara
	FinPara
	
	para i = 1 hasta limite con paso 1 Hacer
		Escribir  arreglo_numeros[i]
	FinPara
		
	
FinAlgoritmo
