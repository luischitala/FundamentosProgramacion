Algoritmo calificacion
	
	definir nota Como Entero
	definir nombre Como Caracter
	Escribir "Bienvenido, cómo se llama?"
	Leer nombre
	Escribir "Hola, " nombre " Por favor ingrese la calificación a verificar"
	Leer nota
	
	Si nota > 70 & nota < 100 Entonces
		Escribir nota " -- Acreditado"
		Escribir "Felicidades " nombre ", " nota " acreditaste la materia"
	SiNo
		Escribir nota " -- Acreditado"
		Escribir "Lo sentimos, necesitas repetir la materiam, ánimo!" 
	Fin Si
	
FinAlgoritmo
