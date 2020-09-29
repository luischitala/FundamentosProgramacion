Algoritmo longitudArregloCadenas
	// Introduzca 5 cadenas a un arreglo e imprimir la cadena y la longitud
	definir i, limite Como Entero
	definir palabra, palabras Como Caracter
	
	limite = 5
	
	dimension palabras(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese una palabra: "
		leer palabra
		palabras[i] = palabra
	FinPara
	
	para i <- 1 hasta limite con paso 1 Hacer
		Escribir "La palabra: " palabras[i] " tiene una longitud de: " Longitud(palabras[i]) " letras."
	FinPara
	
	
FinAlgoritmo

