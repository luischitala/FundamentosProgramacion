Algoritmo cosas_hacer
	//Cosas por hacer registre y muestre
	Escribir "Bienvenido a la aplicación de cosas por hacer"
	definir i, limite Como Entero
	definir cosas, cosa Como Caracter
	limite = 3
	Dimension cosas[limite]
	Escribir "Ingrese 1 para agregar las cosas que tiene que hacer"
	Escribir "Ingrese 2 para ver las cosas que tiene que hacer"
	Escribir "Ingrese 3 para ver las opciones del menú"
	Escribir "Ingrese 0 para salir del programa"
	Repetir
		Escribir "Ingresar la opción deseada"
		Leer menu 
		Si menu == 1 Entonces
			Para i <- 1 Hasta limite Con Paso 1 Hacer
				Escribir "Ingrese una cosa por hacer: "
				Leer cosa
				cosas[i] = cosa
			Fin Para
		Fin Si
		Si menu == 2 Entonces
			Para i <- 1 Hasta limite Con Paso 1 Hacer
				Escribir i " - " cosas[i]
			Fin Para
		Fin Si
		Si menu == 3 Entonces
			Escribir "Ingrese 1 para agregar las cosas que tiene que hacer"
			Escribir "Ingrese 2 para ver las cosas que tiene que hacer"
			Escribir "Ingrese 3 para ver las opciones del menú"
			Escribir "Ingrese 0 para salir del programa"
		Fin Si
		
		
	Hasta Que menu == 0
	Escribir "Gracias por utilizare la aplicación"
FinAlgoritmo
