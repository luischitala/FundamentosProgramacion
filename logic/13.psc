Algoritmo rango_edad
	//Definici�n de las varibles
	Definir  re, a, edad, a�os Como Entero
	//Delimiteci�n de los arreglos
	re <- 4
	a <- 4
	//arreglo 
	dimension rangoedad(re)
	
	rangoEdad[1] <- "Ni�o"; rangoEdad[2] <- "Adolescente"; 
	rangoEdad[3] <- "Joven"; rangoEdad[4] <- "Adulto"; 
	//arreglo de edades referencia
	dimension a�os(a)
	
	a�os[1] <- 14; a�os[2] <- 21; 
	a�os[3] <- 40; a�os[4] <- 100; 
	
	Escribir "Bievenido al programa de categorizaci�n de edad"
	//Ciclo de programa 
	Repetir
		//Validaci�n de a�os
		Repetir
			Escribir "Por favor ingrese su edad 0 - 100 "
			Leer edad
			si	edad > 100
				Escribir "Edad err�nea, por favor ingrese un n�mero entre 1 - 100"
			FinSi
		Hasta Que edad <= 100
		si edad >= 1 & edad < 14 Entonces
			Escribir "Es un ni�o"
		FinSi
		si edad >= 14 & edad < 21 Entonces
			Escribir "Es un adolescente"
		FinSi
		si edad >= 21 & edad < 40 Entonces
			Escribir "Es un joven"
		FinSi
		si edad >= 40 & edad < 100 Entonces
			Escribir "Usted es un adulto"
		FinSi
		Escribir "***************************************************************"
		Escribir "Para salir del programa presione 0"
		Escribir "Para continuar presione 1"
		Escribir "***************************************************************"
		Leer menu
	Hasta Que menu = 0
	
FinAlgoritmo
