Algoritmo fecha_mes
	//15.-Introduzca una fecha en formato num�rico y determinar e imprimir cuantos d�as tiene el mes
	Definir i, dia, mes, ano Como Entero
	d <- 12
	m <- 12
	//Arreglo meses
	dimension meses(m)
	meses[1] <- "Enero"; meses[2] <- "Febrero";
	meses[3] <- "Marzo"; meses[4] <- "Abril";
	meses[5] <- "Mayo";  meses[6] <- "Junio";
	meses[7] <- "Julio"; meses[8] <- "Agosto";
	meses[9] <- "Septiembre"; meses[10] <- "Octubre";
	meses[11] <- "Noviembre"; meses[12] <- "Diciembre";
	//Arreglos d�as por meses
	Dimension days_per_month(d)
	days_per_month[1] <- 31; days_per_month[2] <- 28; days_per_month[3] <- 31
	days_per_month[4] <- 30; days_per_month[5] <- 31; days_per_month[6] <- 30;
	days_per_month[7] <- 31; days_per_month[8] <- 31; days_per_month[9] <- 30;
	days_per_month[10] <- 31; days_per_month[11] <- 30; days_per_month[12] <- 31;
	//Ciclo "Programa"
	Repetir
		Escribir "Por favor ingrese una fecha en formato DD/MM/AAAA"
		//Validaci�n de a�os
		Repetir
			Escribir "Por favor ingrese un d�a 1 - 31 "
			Leer dia
			si	dia > 31
				Escribir "D�a err�neo, por favor ingrese un d�a 1 - 31"
			FinSi
		Hasta Que dia <= 31
		Repetir
			Escribir "Por favor ingrese un mes 1 - 12 "
			Leer mes
			si	mes > 12
				Escribir "Mes err�neo, por favor ingrese un mes 1 - 12 "
			FinSi
		Hasta Que mes <= 12
		Repetir
			Escribir "Por favor ingrese un a�o 1950 - 2020 "
			Leer ano
			si	ano > 2020
				Escribir "A�o err�neo, por favor ingrese un n�mero entre 1950 - 2020"
			FinSi
			si	ano < 1950
				Escribir "A�o err�neo, por favor ingrese un n�mero entre 1950 - 2020"
			FinSi
		Hasta Que ano >= 1949
		
		Si mes >= 1 o mes <= 12 Entonces
			Para i <- 1 Hasta m Con Paso 1 Hacer
				si mes = i
					Escribir "--------------------------------------------------"
					Escribir "El n�mero " meses[i] " tiene " days_per_month[i] " d�as."
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
