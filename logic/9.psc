Algoritmo vocal
	definir i,v, menu Como Entero
	definir b Como Logico
	definir letra Como Caracter
	v = 5
	b = Falso
	Dimension vocales(v)
	vocales[1] <- "a" 
	vocales[2] <- "e"
	vocales[3] <- "i"
	vocales[4] <- "o"
	vocales[5] <- "u"
	Repetir
		Escribir "Por favor ingrese una letra"
		Leer letra
		Escribir "-------------------------------------------"
		Para i <- 1 Hasta v Con Paso 1 Hacer
			Si letra = vocales[i]
				Escribir "La letra: " letra  " es vocal"
				b <- Verdadero
			FinSi
		Fin Para
		Si b es igual a Falso Entonces
			Escribir "Su letra no es vocal"
		FinSi			
		Escribir "-------------------------------------------"
		Escribir "Para salir del programa presione 0"
		Leer menu
	Hasta Que menu = 0
	
FinAlgoritmo