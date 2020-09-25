Algoritmo dias_mes
	//Declaración de varables iteradoras y delimitantes
	definir num, i, m Como Entero
	Escribir "Bienvenido al programa"
	//Asignación del límite del array
	d <- 12
	m <- 12
	//Arreglo de meses
	Dimension days_per_month(d)
	days_per_month[1] <- 31; days_per_month[2] <- 28; days_per_month[3] <- 31
	days_per_month[4] <- 30; days_per_month[5] <- 31; days_per_month[6] <- 30;
	days_per_month[7] <- 31; days_per_month[8] <- 31; days_per_month[9] <- 30;
	days_per_month[10] <- 31; days_per_month[11] <- 30; days_per_month[12] <- 31;
	//Arreglo meses
	dimension meses(m)
	meses[1] <- "Enero"; meses[2] <- "Febrero"; meses[3] <- "Marzo"; 
	meses[4] <- "Abril"; meses[5] <- "Mayo";  meses[6] <- "Junio";
	meses[7] <- "Julio"; meses[8] <- "Agosto"; meses[9] <- "Septiembre"; 
	meses[10] <- "Octubre";	meses[11] <- "Noviembre"; meses[12] <- "Diciembre";
	//Ciclo "Programa"
	Repetir
		Escribir "Por favor ingrese un número"
		Leer num
		//validación del numero
		Si num >= 1 o num <= 12 Entonces
			//Recorrido del arreglo
			Para i <- 1 Hasta m Con Paso 1 Hacer
				si num Es Igual A  i
					Escribir "--------------------------------------------------"
					Escribir "El número " num " equivale al mes de " meses[i]
					Escribir "El mes de " meses[i] " tiene " days_per_month[i] " días"
					Escribir "--------------------------------------------------"
				FinSi
			Fin Para
		FinSi
		//Condicional número inválido
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
