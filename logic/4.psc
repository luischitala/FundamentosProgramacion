Algoritmo calificacion
	
	definir nota Como Entero
	definir nombre Como Caracter
	Escribir "Bienvenido, c�mo se llama?"
	Leer nombre
	Escribir "Hola, " nombre " Por favor ingrese la calificaci�n a verificar"
	Leer nota
	
	Si nota > 70 & nota < 100 Entonces
		Escribir nota " -- Acreditado"
		Escribir "Felicidades " nombre ", " nota " acreditaste la materia"
	SiNo
		Escribir nota " -- Acreditado"
		Escribir "Lo sentimos, necesitas repetir la materiam, �nimo!" 
	Fin Si
	
FinAlgoritmo
