Algoritmo rango_edad
	//Definición de las varibles
	Definir  re, a, edad, años Como Entero
	//Delimiteción de los arreglos
	re <- 4
	a <- 4
	//arreglo 
	dimension rangoedad(re)
	
	rangoEdad[1] <- "Niño"; rangoEdad[2] <- "Adolescente"; 
	rangoEdad[3] <- "Joven"; rangoEdad[4] <- "Adulto"; 
	//arreglo de edades referencia
	dimension años(a)
	
	años[1] <- 14; años[2] <- 21; 
	años[3] <- 40; años[4] <- 100; 
	
	Escribir "Bievenido al programa de categorización de edad"
	//Ciclo de programa 
	Repetir
		//Validación de años
		Repetir
			Escribir "Por favor ingrese su edad 0 - 100 "
			Leer edad
			si	edad > 100
				Escribir "Edad errónea, por favor ingrese un número entre 1 - 100"
			FinSi
		Hasta Que edad <= 100
		si edad >= 1 & edad < 14 Entonces
			Escribir "Es un niño"
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
