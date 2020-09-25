Algoritmo signo_zodiacal
	//11.-Introduzca día, mes en formato numérico e imprima cual es el signo zodiacalque corresponde a esa fecha
	Definir i, d, m, s, dia_nacimiento, mes_nacimiento,dia_incio Como Entero
	Definir signo Como Caracter
	m <- 12
	s <- 12
	dm <- 12
	
	dimension meses(m)
	
	meses[1] <- "Enero"; meses[2] <- "Febrero"; meses[3] <- "Marzo"; 
	meses[4] <- "Abril"; meses[5] <- "Mayo";  meses[6] <- "Junio";
	meses[7] <- "Julio"; meses[8] <- "Agosto"; meses[9] <- "Septiembre"; 
	meses[10] <- "Octubre";	meses[11] <- "Noviembre"; meses[12] <- "Diciembre";
	
	dimension signos(s)
	
	signos[1] <- "Acuario"; signos[2] <- "Picis"; signos[3] <- "Aries"; 
	signos[4] <- "Tauro"; signos[5] <- "Géminis";  signos[6] <- "Cancer";
	signos[7] <- "Leo"; signos[8] <- "Virgo"; signos[9] <- "Libra"; 
	signos[10] <- "Escorpio";	signos[11] <- "Sagitario"; signos[12] <- "Capricornio";
	
	dimension diasmin(dm)
	
	diasmin[1] <- 20; diasmin[2] <- 19; diasmin[3] <- 20; 
	diasmin[4] <- 21; diasmin[5] <- 21; diasmin[6] <- 21;
	diasmin[7] <- 21; diasmin[8] <- 22; diasmin[9] <- 22; 
	diasmin[10] <- 23;	diasmin[11] <- 23; diasmin[12] <- 21;
	
	Escribir "Bievenido al programa de los horóscopos"
	
	Repetir
		Repetir
			Escribir "Por favor ingrese su día de nacimiento 1 - 31 "
			Leer dia_nacimiento
			si	dia_nacimiento > 31
				Escribir "Día erróneo, por favor ingrese un día entre 1 - 31"
			FinSi
		Hasta Que dia_nacimiento <= 31
		Repetir
			Escribir "Por favor ingrese su mes de nacimiento 1 - 12 "
			Leer mes_nacimiento
			si	mes_nacimiento > 12
				Escribir "Mes erróneo, por favor ingrese un mes entre 1 - 12"
			FinSi
		Hasta Que mes_nacimiento <= 12
	
		Si mes_nacimiento >= 1 o mes_nacimiento <= 12 Entonces
			Para i <- 1 Hasta s Con Paso 1 Hacer
				si mes_nacimiento = i Entonces
					si dia_nacimiento < diasmin[i] Entonces
						Escribir "--------------------------------------------------"
						Escribir "Su signo es: "  signos[i-1]
						Escribir "--------------------------------------------------"
					FinSi
					si dia_nacimiento >= diasmin[i] Entonces
						Escribir "--------------------------------------------------"
						Escribir "Su signo es: "  signos[i]
						Escribir "--------------------------------------------------"
					FinSi
				FinSi
			Fin Para
		FinSi
		Si mes_nacimiento > 12
			Escribir "Por favor ingrese un número del 1 al 12"
		FinSi
		Escribir "***************************************************************"
		Escribir "Para salir del programa presione 0"
		Escribir "Para continuar presione 1"
		Escribir "***************************************************************"
		Leer menu
	Hasta Que menu = 0	
	
	
	
FinAlgoritmo

