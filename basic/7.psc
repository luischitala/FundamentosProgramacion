//Funci�n principal de iteraci�n de meses y d�as
Funcion age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support, current_year, birth_year, biciest_constant)
	Para i <- 1 Hasta current_month - 1 Con Paso 1 Hacer
		day_total = day_total + days_per_month[i] 
	Fin Para
	support = day_total + current_day
	age_days = constant_days_year * a + support
	//Adici�n de a�os biciestos
	age_years = current_year - birth_year
	biciest_years = (age_years / biciest_constant)
	age_days = age_days + biciest_years
Fin Funcion
//Algoritmo principal en su versi�n compleja y simple
Algoritmo calcular_edad_dias
	//Declaraci�n de variables y constantes
	Definir age_years, age_days, biciest_years, support Como Entero
	//Variables de fecha actual
	Definir current_month, current_year, current_day Como Entero
	// Input de fecha de nacimiento
	Definir birth_day, birth_month, birth_year Como Entero
	// Variables de apoyo
	Definir d, m, a Como Entero
	constant_days_year = 365
	constant_month = 12
	biciest_constant = 4
	//Complemento para el diccionario
	days_month = 0
	//Variables iteradoras
	Definir day_total, i como Entero
	n <- 12
	//Arreglo para los d�as del a�o
	Dimension days_per_month(n)
	days_per_month[1] <- 31
	days_per_month[2] <- 28
	days_per_month[3] <- 31
	days_per_month[4] <- 30
	days_per_month[5] <- 31
	days_per_month[6] <- 30
	days_per_month[7] <- 31
	days_per_month[8] <- 31
	days_per_month[9] <- 30
	days_per_month[10] <- 31
	days_per_month[11] <- 30
	days_per_month[12] <- 31
	//*********************************************************************
	Escribir "Indique la fecha de hoy: (en formato DD / MM / AAAA)"
	Leer current_day, current_month, current_year
	Escribir "Indique su fecha de nacimiento: (en formato DD / MM / AAAA)"
	// ********************************************************************
	Escribir "Ingrese el d�a de su nacimiento"
	Leer birth_day
	Escribir "�En qu� mes naci�? "
	Leer birth_month
	Escribir "Por �ltimo el a�o: "
	Leer birth_year
// Validaciones
	//Validaci�n de mes
	Repetir
		Si birth_month < 1 | birth_month > 12 Entonces
			Escribir "Has introducido un mes invalido"
			Escribir "Los meses van del: 1 al 12"
			Leer birth_month
			Si no birth_month >= 1 & birth_month <= 12 
			FinSi
		Fin Si
	Hasta Que  birth_month >= 1 & birth_month <= 12
	//Validaci�n de a�o
	Repetir
		Si birth_year<1910 | birth_year > current_year Entonces
			Escribir "Has introducido un a�o inv�lido"
			Escribir "Un a�o correcto es: 1911 a 2020"
			Leer birth_year
			Si no birth_year >= 1910 & birth_year <= current_year Escribir "Hola soy un debugger :)" 
			FinSi
		Fin Si
	Hasta Que  birth_year >= 1910 & birth_year <= current_year
//Diccionario de meses
	Segun birth_month Hacer
		1:
			
			mes<-"Enero"
			days_month<-31
			
		2:
			
			mes<-"Febrero"
			days_month<-28
			
		3:
			
			mes<-"Marzo"
			days_month<-31
			
		4:
			
			mes<-"Abril"
			days_month<-30
			
		5:
			
			mes<-"Mayo"
			days_month<-31
			
		6:
			
			mes<-"Junio"
			days_month<-30
			
		7:
			
			mes<-"Julio"
			days_month<-31
			
		8:
			
			mes<-"Agosto"
			days_month <-31
			
		9:
			
			mes<-"Septiembre"
			days_month<-30
			
		10:
			
			mes<-"Octubre"
			days_month<-31
			
		11:
			
			mes<-"Noviembre"
			days_month<-30
			
		12:
			
			mes<-"Diciembre"
			days_month<-31
			
		De Otro Modo:
	Fin Segun
//Validaci�n del d�a
	Repetir
		Si birth_month <1 | birth_day>days_month Entonces
			Escribir "Has introducidoun una fecha inv�lida "
		Fin Si
	Hasta Que birth_day>0 & birth_day <= days_month
	
//Verificaci�n de los casos
	//Si el cumplea�os cae en el mismo d�a
	Si current_month Es Igual A birth_month Entonces
		//Si el d�a actual coincide con su cumplea�os
		Si current_day Es Igual A birth_day Entonces
			a=current_year-birth_year
			m=0
			d=0
			age_years = current_year - birth_year
			biciest_years = trunc(age_years / biciest_constant)
			age_days = age_years * constant_days_year
			age_days = age_days + biciest_years
			Escribir "Hoy es tu cumplea�os Felicidades!"
			Escribir "Tienes " a " a�os de edad"
			Escribir "Tu edad en d�as es: " age_days
		Fin Si
		//Si ya pas� su cumplea�os por d�as
		Si current_day Es Mayor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = current_month
			d = current_day - birth_day
			age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
			//Escribir current_year, birth_year
			Escribir current_year, ' - ' birth_year
			Escribir "Ya pas� tu complea�os por " d " d�as"
			Escribir "Tu edad en d�as es: " age_days
		Fin Si
		//Si todav�a faltan d�as para su cumplea�os
		Si current_day Es Menor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = current_month
			d = birth_day - current_day
			age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
			Escribir current_year, ' - ' birth_year
			Escribir "Todav�a no has cumplido a�os"
			Escribir "Tienes: " a " y te faltan: " d " d�as para cumplir a�os"
			Escribir "Tu edad en D�as es " age_days
		Fin Si
	//Condiciones para cuando el mes actual es mayor que el mes del cumplea�os
		SiNo
			Si current_month Es Mayor Que birth_month Entonces
				//Si el cumplea�os cae en el mismo d�a
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = 0 
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir current_year, ' - ' birth_year
					Escribir "Tu cumplea�os fue hace: " m " Meses"
					Escribir "Tu edad en d�as es: " age_days
				Fin Si
				//S� ya pas� el d�a del cumplea�os
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = current_day - birth_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del a�o " birth_year, ' al a�o ' current_year
					Escribir "Tu cumplea�os fue hace: " m " Meses y "   d " D�as."
					Escribir "Tu edad en meses es " age_days
				Fin Si
				//Si todavia falta para el dia del cumplea�os
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = birth_day - current_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del a�o " birth_year, ' al a�o ' current_year
					Escribir "Tu cumplea�os fue hace: " m " Meses y " d " D�as"
					Escribir "Tu edad en D�as es: " age_days
					
				Fin Si
	//Condiciones para cuando el mes actual es menor que el mes del cumplea�ero		
		SiNo
			Si current_month Es Menor Que birth_month Entonces
				//Si la diferencias son meses
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = 0 
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir current_year, ' - ' birth_year
					Escribir "Tu cumplea�os va a ser en: " m " Meses"
					Escribir "Tu edad en d�as es: " age_days
				FinSi
				//Si faltan d�as y meses 
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_mont - current
					d = birth_day - current_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del a�o " birth_year, ' al a�o ' current_year
					Escribir "Tu cumplea�os va a ser en: " m " Meses" " y "  d " D�as" 
					Escribir "Tu edad en D�as es " age_days
				Fin Si
				// Si faltan'meses y sobran d�as 
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = current_month - birth_month
					d = current_day - birth_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del a�o " birth_year, ' al a�o ' current_year
					Escribir "Tu cumplea�os va a ser en: " m " Meses y"   d " D�as."
					Escribir "Tu edad en meses es " age_days
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
// Vers�n simplificada con un sesgo muy grande debido a la falta de precision en los d�as y los meses
	//Input de la edad
	Escribir "�qu� edad tiene?"
	Leer age_years
	//Obtenci�n del a�o de nacimiento
	born_year = current_year - age_years
	Escribir "Usted ha nacido en el a�o: " born_year
	//C�lculo de a�os bieciestos
	age_days = constant_days_year * age_years
	biciest_years = trunc(age_years / biciest_constant)
	age_days = age_days + biciest_years
	Escribir "A sus 25 a�os pasaron : " biciest_years " a�os biciestos"
	Escribir "Su edad en d�as es: " age_days
	
FinAlgoritmo
