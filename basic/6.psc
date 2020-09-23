Algoritmo promedio
	Escribir "Bienvenido a la calculadora de promedios"
	//Variables iteradoras
	Definir i, nota, calificaciones Como Entero
	n = 5
	
	Para i <- 1 Hasta n  Con Paso 1 Hacer
		Escribir "Ingrese la calificación del " i " parcial"
		Leer nota
		calificaciones = calificaciones + nota
	Fin Para
	
	average = calificaciones / n
	
	Si average >= 8 Entonces
		Escribir "Felicidades su promedio final fue: " average
	SiNo
		Si average < 8 Entonces
			Escribir "Tu promedio fue: " average " Te recomendamos estudiar más"
			
		FinSi
	Fin Si
	
	
FinAlgoritmo
