Algoritmo SepararCadena
	//Realizar un algoritmos que leer una cadena e imprima car�cter por car�cter en forma vertical
	Definir i,token Como Entero
	Definir frase Como Caracter
	Escribir "Ingrese una palabra o frase"
	leer frase
	tamano = Longitud(frase)
	Escribir "Su palabra/frase tiene el tama�o de " tamano "letras "
	
	dimension letras[tamano]
	
	Para i <- 1 Hasta tamano Con Paso 1 Hacer
		letras[i] = Subcadena(frase, i,i)
		imprimir letras[i]
	Fin Para
	
	
FinAlgoritmo
