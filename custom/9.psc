Algoritmo Serie_Fibonacci
	//Realizar un algoritmo de la serie de fibonacci
	Escribir "Por favor ingrese n: "
	leer n
	a = 0
	b = 1
	
	Para i<-1 Hasta n Hacer
		Escribir a
		c = a+b
		a = b
		b = c
	FinPara
	
FinAlgoritmo