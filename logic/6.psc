Algoritmo numero_semana
	//Variables iteradoras, de arreglo 
	definir num, i, s Como Entero
	Escribir "Bienvenido al programa"
	s = 7
	dimension semana(s)
	
	semana[1] <- "Lunes"; semana[2] <- "Martes";
	semana[3] <- "Miércoles"; semana[4] <- "Jueves";
	semana[5] <- "Viernes";  semana[6] <- "Viernes";
	semana[7] <- "Domingo"; 
	
	Repetir
		Escribir "Por favor ingrese un número"
		Leer num
		Si num >= 1 o num <= 7 Entonces
			Para i <- 1 Hasta s Con Paso 1 Hacer
				si num = i
					Escribir "--------------------------------------------------"
					Escribir "El número " num " equivale al dia de " semana[i]
					Escribir "--------------------------------------------------"
				FinSi
			Fin Para
		FinSi
		Si num > 7
			Escribir "Por favor ingrese un número del 1 al 7"
		FinSi
		Escribir "***************************************************************"
		Escribir "Para salir del programa presione 0"
		Escribir "Para continuar presione 1"
		Escribir "***************************************************************"
		Leer menu
	Hasta Que menu = 0	
	
FinAlgoritmo
