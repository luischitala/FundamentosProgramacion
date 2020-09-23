Algoritmo divisas
	Escribir "Bienvenido a la calculadora de divisas"
	// Precio del dólar al día de 09/20/2020 $21.08
	pesos = 0
	dolares = 0
	precio_dolar = 21.08
	Escribir "Ingrese la cantidad en Pesos Mexicanos (MXN) que dedesea convertir a Dólares (USD)"
	Leer pesos
	dolares = trunc(pesos / precio_dolar)
	
	Escribir "La cantidad de: " pesos " Pesos, es: " dolares " en Dólares"
	
	
	
FinAlgoritmo
