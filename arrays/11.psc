Algoritmo sin_titulo
	//Introduzca  5  cadenas a  un  arreglo  e imprimir  las  cadenas  que  terminan  con
	//consonante
	definir i, x, limite, soporte, letras, limite_consonante, final Como Entero
	definir palabra, palabras, consonante, nueva_palabra, letra Como Caracter
	
	limite = 5
	limite_consonante = 22
	z = 0
	Dimension consonantes(limite_consonante)
	consonantes[1] <- "b";	consonantes[2] <- "c";	consonantes[3] <- "d"; 	
	consonantes[4] <- "f";	consonantes[5] <- "g";	consonantes[6] <- "h";
	consonantes[7] <- "j";	consonantes[8] <- "k";	consonantes[9] <- "l";	
	consonantes[10] <- "m";	consonantes[11] <- "n";	consonantes[12] <- "ñ";
	consonantes[13] <- "p";	consonantes[14] <- "q";	consonantes[15] <- "r";	
	consonantes[16] <- "s";	consonantes[17] <- "t";	consonantes[18] <- "v";
	consonantes[19] <- "w";	consonantes[20] <- "x";	consonantes[21] <- "y";
	consonantes[22] <- "z";
	
	dimension palabras(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese una palabra: "
		leer palabra
		palabras[i] = palabra
	FinPara
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		final = Longitud(palabras[i])
		letra = Subcadena(palabras[i], final, final)
		Para x <- 1 Hasta limite_consonante Con Paso 1 Hacer
			consonante = consonantes[x]
			Si letra es igual a consonante Entonces
				Escribir "--------------------------------------------------------------"
				Escribir "La palabra " palabras[i] " termina con consonante."
				Escribir "--------------------------------------------------------------"
			Fin Si
		Fin Para
	Fin Para
	
FinAlgoritmo

