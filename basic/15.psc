Algoritmo conversor_horas
	//Declaración de variables
	horas = 0
	const_minutos = 60
	const_segundos = 60
	horas_segundos = 0
	Escribir "Ingrese una cantidad de horas a convertir a segundos"
	Leer horas
	
	horas_segundos = horas * const_minutos * const_segundos
	Escribir "La cantidad de " horas " horas, son " horas_segundos " segundos"
	
	
	
FinAlgoritmo
