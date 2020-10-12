Algoritmo juego_dado
	//Elabora un juego de dados en el que se hagan x lanzamientos  
	Definir dado, puntuacion_jugador, puntuacion_robot,i, numero_lanzamientos Como Entero
	puntuacion_robot = 0
	puntuacion_jugador = 0
	eleccion = 0
	Escribir "Ingresa la cantidad de tiros que quieres que se lancen"
	leer numero_lanzamientos
	Escribir "Presiona 1 para lanzar tus dados"
	leer eleccion 
	Si eleccion == 1 Entonces
		Para i<-1 Hasta numero_lanzamientos Con Paso 1 Hacer
			dado = Aleatorio(1,7)
			puntuacion_jugador = puntuacion_jugador + dado
		Fin Para
	Escribir "Tu puntuación fue: " puntuacion_jugador
	Fin Si
	Para i<-1 Hasta numero_lanzamientos Con Paso 1 Hacer
		dado = Aleatorio(1,7)
		puntuacion_robot = puntuacion_robot + dado
	Fin Para
	Escribir "La Puntuación del Robot Fue: " puntuacion_robot
	Si puntuacion_jugador > puntuacion_robot Entonces
		Escribir "¡Felicidades Ganaste!"
	Fin Si
	Si puntuacion_jugador == puntuacion_robot Entonces
		Escribir "¡Es un empate!"
	FinSi
	Si puntuacion_jugador < puntuacion_robot Entonces
		Escribir "Lo sentimos te ganó el Robot"
	FinSi
FinAlgoritmo
