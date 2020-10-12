Algoritmo invertir_palabra
	//Invertir palabra
	palabra = ""
	palabra_invertida = ""
	apoyo = 0
	EScribir "Por favor ingrese una palabra que quiera invertir: "
	Leer palabra
	longitud_palabra = Longitud(palabra)
	Para i = 1 Hasta longitud_palabra con paso 1 Hacer
		letra = Subcadena(palabra, longitud_palabra-apoyo, longitud_palabra-apoyo)
		palabra_invertida = palabra_invertida + letra
		apoyo = apoyo + 1
	Fin Para
	Escribir palabra_invertida
FinAlgoritmo

