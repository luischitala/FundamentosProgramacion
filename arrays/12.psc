Algoritmo sin_titulo
	//Introduzca 5 cadenas a un arreglo e imprimir las cadenas que tienen 3 vocales
	definir i, x, limite, soporte, total_vocales, letras Como Entero
	definir palabra, palabras, vocales, nueva_palabra, letra, vocal Como Caracter
	
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
		letras = Longitud(palabras[i])
		palabra = palabras[i]
		Para x <- 1 Hasta letras Con Paso 1 Hacer
			letra = Subcadena(palabra, 1,letras)
			vocal = vocales[i]
			Escribir "Hola"
			escribir vocal
			Si letra es igual a vocal Entonces
				escribir "hola"
				total_vocales = total_vocales + 1
				Si total_vocales Es Igual A 3 Entonces
					Escribir "La palabra " palabras[i] " tiene 3 vocales."
					Escribir "--------"
				Fin Si
				
			Fin Si
		Fin Para
	Fin Para
	
FinAlgoritmo