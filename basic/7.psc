//Función principal de iteración de meses y días
Funcion age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support, current_year, birth_year, biciest_constant)
	Para i <- 1 Hasta current_month - 1 Con Paso 1 Hacer
		day_total = day_total + days_per_month[i] 
	Fin Para
	support = day_total + current_day
	age_days = constant_days_year * a + support
	//Adición de años biciestos
	age_years = current_year - birth_year
	biciest_years = (age_years / biciest_constant)
	age_days = age_days + biciest_years
Fin Funcion
//Algoritmo principal en su versión compleja y simple
Algoritmo calcular_edad_dias
	//Declaración de variables y constantes
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
	//Arreglo para los días del año
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
	Escribir "Ingrese el día de su nacimiento"
	Leer birth_day
	Escribir "¿En qué mes nació? "
	Leer birth_month
	Escribir "Por último el año: "
	Leer birth_year
// Validaciones
	//Validación de mes
	Repetir
		Si birth_month < 1 | birth_month > 12 Entonces
			Escribir "Has introducido un mes invalido"
			Escribir "Los meses van del: 1 al 12"
			Leer birth_month
			Si no birth_month >= 1 & birth_month <= 12 
			FinSi
		Fin Si
	Hasta Que  birth_month >= 1 & birth_month <= 12
	//Validación de año
	Repetir
		Si birth_year<1910 | birth_year > current_year Entonces
			Escribir "Has introducido un año inválido"
			Escribir "Un año correcto es: 1911 a 2020"
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
//Validación del día
	Repetir
		Si birth_month <1 | birth_day>days_month Entonces
			Escribir "Has introducidoun una fecha inválida "
		Fin Si
	Hasta Que birth_day>0 & birth_day <= days_month
	
//Verificación de los casos
	//Si el cumpleaños cae en el mismo día
	Si current_month Es Igual A birth_month Entonces
		//Si el día actual coincide con su cumpleaños
		Si current_day Es Igual A birth_day Entonces
			a=current_year-birth_year
			m=0
			d=0
			age_years = current_year - birth_year
			biciest_years = trunc(age_years / biciest_constant)
			age_days = age_years * constant_days_year
			age_days = age_days + biciest_years
			Escribir "Hoy es tu cumpleaños Felicidades!"
			Escribir "Tienes " a " años de edad"
			Escribir "Tu edad en días es: " age_days
		Fin Si
		//Si ya pasó su cumpleaños por días
		Si current_day Es Mayor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = current_month
			d = current_day - birth_day
			age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
			//Escribir current_year, birth_year
			Escribir current_year, ' - ' birth_year
			Escribir "Ya pasó tu compleaños por " d " días"
			Escribir "Tu edad en días es: " age_days
		Fin Si
		//Si todavía faltan días para su cumpleaños
		Si current_day Es Menor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = current_month
			d = birth_day - current_day
			age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
			Escribir current_year, ' - ' birth_year
			Escribir "Todavía no has cumplido años"
			Escribir "Tienes: " a " y te faltan: " d " días para cumplir años"
			Escribir "Tu edad en Días es " age_days
		Fin Si
	//Condiciones para cuando el mes actual es mayor que el mes del cumpleaños
		SiNo
			Si current_month Es Mayor Que birth_month Entonces
				//Si el cumpleaños cae en el mismo día
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = 0 
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir current_year, ' - ' birth_year
					Escribir "Tu cumpleaños fue hace: " m " Meses"
					Escribir "Tu edad en días es: " age_days
				Fin Si
				//Sí ya pasó el día del cumpleaños
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = current_day - birth_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del año " birth_year, ' al año ' current_year
					Escribir "Tu cumpleaños fue hace: " m " Meses y "   d " Días."
					Escribir "Tu edad en meses es " age_days
				Fin Si
				//Si todavia falta para el dia del cumpleaños
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year
					m = current_month - birth_month
					d = birth_day - current_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del año " birth_year, ' al año ' current_year
					Escribir "Tu cumpleaños fue hace: " m " Meses y " d " Días"
					Escribir "Tu edad en Días es: " age_days
					
				Fin Si
	//Condiciones para cuando el mes actual es menor que el mes del cumpleañero		
		SiNo
			Si current_month Es Menor Que birth_month Entonces
				//Si la diferencias son meses
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = 0 
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir current_year, ' - ' birth_year
					Escribir "Tu cumpleaños va a ser en: " m " Meses"
					Escribir "Tu edad en días es: " age_days
				FinSi
				//Si faltan días y meses 
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_mont - current
					d = birth_day - current_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del año " birth_year, ' al año ' current_year
					Escribir "Tu cumpleaños va a ser en: " m " Meses" " y "  d " Días" 
					Escribir "Tu edad en Días es " age_days
				Fin Si
				// Si faltan'meses y sobran días 
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = current_month - birth_month
					d = current_day - birth_day
					age_days <- month_iteration (1, age_years, current_month, day_total, days_per_month, constant_days_year, age_days, a, support,birth_year, current_year, biciest_constant)
					Escribir "Del año " birth_year, ' al año ' current_year
					Escribir "Tu cumpleaños va a ser en: " m " Meses y"   d " Días."
					Escribir "Tu edad en meses es " age_days
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
// Versón simplificada con un sesgo muy grande debido a la falta de precision en los días y los meses
	//Input de la edad
	Escribir "¿qué edad tiene?"
	Leer age_years
	//Obtención del año de nacimiento
	born_year = current_year - age_years
	Escribir "Usted ha nacido en el año: " born_year
	//Cálculo de años bieciestos
	age_days = constant_days_year * age_years
	biciest_years = trunc(age_years / biciest_constant)
	age_days = age_days + biciest_years
	Escribir "A sus 25 años pasaron : " biciest_years " años biciestos"
	Escribir "Su edad en días es: " age_days
	
FinAlgoritmo
