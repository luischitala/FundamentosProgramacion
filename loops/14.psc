Algoritmo sin_titulo
	//Realizar un algoritmo que lea N n�meros y obtenga e imprima cual es el mayor
	Definir limite,num,i,soporte Como Entero
	
	Escribir "Por favor ingrese la cantidad de n�meros a ingresar: "
	leer limite
	Dimension lista_numeros(limite)
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese un n�mero: "
		Leer num
		lista_numeros[i] = num
	Fin Para
	
	soporte = lista_numeros[1]
	
	Para i <- 2 Hasta limite Con Paso 1 Hacer
		si lista_numeros[i] > soporte Entonces
			soporte = lista_numeros[i]
		FinSi
	Fin Para
	
	Escribir "El n�mero mayor es : " soporte
	
FinAlgoritmo
