Algoritmo sin_titulo
	//Introduzca 5 cadenas a un arreglo e imprimir las cadenas que inician con vocal
	definir i, x, limite, soporte, letras Como Entero
	definir palabra, palabras, vocales, nueva_palabra, letra Como Caracter
	
	limite = 5
	
	dimension palabras(limite)
	dimension vocales(limite)
	
	vocales[1]<-"a"; vocales[2]<-"e"; vocales[3]<-"i"
	vocales[4]<- "o"; vocales[5]="u";
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese una palabra: "
		leer palabra
		palabras[i] = palabra
	FinPara
	
	soporte = Longitud(palabras[1])
	
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
			letra = Subcadena(palabras[i], 1,1)
			palabra = palabras[i]
			Para x <- 1 Hasta limite Con Paso 1 Hacer
				vocal = vocales[x]
				Si letra es igual a vocal Entonces
					Escribir "La palabra " palabras[i] " inicia con vocal."
					Escribir "--------"
				Fin Si
			Fin Para
	Fin Para
	
FinAlgoritmo

