Algoritmo consonante
	
	Definir consonantes Como Caracter
	
	definir i, c, menu Como Entero
	definir b Como Logico
	definir letra Como Caracter
	c = 22
	Dimension consonantes(c)
	consonantes[1] <- "b";	consonantes[2] <- "c";	consonantes[3] <- "d"; 	
	consonantes[4] <- "f";	consonantes[5] <- "g";	consonantes[6] <- "h";
	consonantes[7] <- "j";	consonantes[8] <- "k";	consonantes[9] <- "l";	
	consonantes[10] <- "m";	consonantes[11] <- "n";	consonantes[12] <- "ñ";
	consonantes[13] <- "p";	consonantes[14] <- "q";	consonantes[15] <- "r";	
	consonantes[16] <- "s";	consonantes[17] <- "t";	consonantes[18] <- "v";
	consonantes[19] <- "w";	consonantes[20] <- "x";	consonantes[21] <- "y";
	consonantes[22] <- "z";
	
	Repetir
		Escribir "Por favor ingrese una letra"
		Leer letra
		Escribir "-------------------------------------------"
		Para i <- 1 Hasta c Con Paso 1 Hacer
			Si letra Es Igual A consonantes[i] Entonces
				Escribir "La letra: " letra " es consonante"
				b <- Verdadero
			FinSi
		Fin Para
		Si b es igual A Falso Entonces
			Escribir "Su letra no es consonante"
		FinSi			
		Escribir "-------------------------------------------"
		Escribir "Para salir del programa presione 0"
		Leer menu
	Hasta Que menu = 0
	
FinAlgoritmo
