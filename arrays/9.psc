Algoritmo sin_titulo
	//Introduzca 5 cadenas a un arreglo y encontrar e imprimir la cadena de mayor longitud
	definir i, limite, soporte Como Entero
	definir palabra, palabras Como Caracter
	
	limite = 5
	
	dimension palabras(limite)
	
	para i <- 1 hasta limite Con Paso 1 Hacer
		Escribir "Por favor ingrese una palabra: "
		leer palabra
		palabras[i] = palabra
	FinPara
	
	soporte = Longitud(palabras[1])
	
	para i <- 1 hasta limite con paso 1 Hacer
		Si longitud(palabras[i]) > soporte Entonces
			palabra = palabras[i]
			soporte = Longitud(palabras[i])
			indice = i
		Fin Si
	FinPara
	Escribir "La palabra con mayor longitud es:  " palabra " ya que cuenta con una longitud de: " soporte
	
FinAlgoritmo
