Algoritmo validacion_mes
	//Declaración de varables iteradoras y delimitantes
	definir num, i, m Como Entero
	Escribir "Bienvenido al programa"
	//Asignación del límite del array
	m = 12
	//Arreglo meses
	dimension meses(m)
	meses[1] <- "Enero"; meses[2] <- "Febrero";
	meses[3] <- "Marzo"; meses[4] <- "Abril";
	meses[5] <- "Mayo";  meses[6] <- "Junio";
	meses[7] <- "Julio"; meses[8] <- "Agosto";
	meses[9] <- "Septiembre"; meses[10] <- "Octubre";
	meses[11] <- "Noviembre"; meses[12] <- "Diciembre";
	//Ciclo "Programa"
	Repetir
		//Validación de mes
		Repetir
			Escribir "Por favor ingrese un mes 1 - 12 "
			Leer num
			si	num > 12
				Escribir "Mes erróneo, por favor ingrese un número entre 1 - 12"
			FinSi
		Hasta Que num <= 12
		Si num >= 1 o num <= 12 Entonces
			Para i <- 1 Hasta m Con Paso 1 Hacer
				si num = i
					Escribir "--------------------------------------------------"
					Escribir "El número " num " equivale al mes de " meses[i]
					Escribir "--------------------------------------------------"
				FinSi
			Fin Para
		FinSi
		Escribir "***************************************************************"
		Escribir "Para salir del programa presione 0"
		Escribir "Para continuar presione 1"
		Escribir "***************************************************************"
		Leer menu
	Hasta Que menu = 0	
	
FinAlgoritmo
