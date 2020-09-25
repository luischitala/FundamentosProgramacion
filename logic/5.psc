Algoritmo numero_meses
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
		Escribir "Por favor ingrese un número"
		Leer num
		Si num >= 1 o num <= 12 Entonces
			Para i <- 1 Hasta m Con Paso 1 Hacer
				si num = i
					Escribir "--------------------------------------------------"
					Escribir "El número " num " equivale al mes de " meses[i]
					Escribir "--------------------------------------------------"
				FinSi
			Fin Para
		FinSi
		Si num > 12
			Escribir "Por favor ingrese un número del 1 al 12"
		FinSi
		Escribir "***************************************************************"
		Escribir "Para salir del programa presione 0"
		Escribir "Para continuar presione 1"
		Escribir "***************************************************************"
		Leer menu
	Hasta Que menu = 0	

	
	

	
	
	
	
FinAlgoritmo
