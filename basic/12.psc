Algoritmo secuencia_decendente
	//Declaracion de variables
	num = 0
	contador = 0
	max_rep = 3
	Escribir "Ingrese un n�mero: "
	Leer num
	Escribir "La secuecia descendente a partir del n�mero que ingres� es: "
	
	Mientras contador <> max_rep Hacer
		contador = contador + 1
		num = num - 1
		Escribir num
	Fin Mientras
	
FinAlgoritmo
