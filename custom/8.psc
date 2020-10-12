Algoritmo sin_titulo
	//Programa administrador de libros
	definir limite, i, select_estado Como Entero
	definir titulo, autor, estado Como Caracter
	limite = 1
	Escribir "Por favor ingrese cuántos libros desea registrar"
	leer limite
	Dimension nombre_libro[limite]
	Dimension autor_libro[limite]
	Dimension estado_libro[limite]
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "Por favor ingrese el título del libro: "
		Leer titulo
		nombre_libro[i] = titulo
		Escribir "Ahora ingrese el autor: "
		Leer autor
		autor_libro[i] = autor
		Escribir "Ingrese si se vende o se presta: 1- Venta, 2- Préstamo"
		Leer select_estado
		Si select_estado == 1 Entonces
			estado = "Venta"
		SiNo
			estado = "Préstamo"
		Fin Si
		estado_libro[i] = estado
	Fin Para
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir i "- " "Libro: " nombre_libro[i], ", Autor: " autor_libro[i] " Estado: " estado_libro[i]
	Fin Para
FinAlgoritmo
