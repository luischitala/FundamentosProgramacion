Algoritmo calcular_edad_meses
//Versión precisa que contembla el sesgo de meses y valida la fecha en su totalidad
	//Declaración de variables y constantes
	constant_month = 12
	days_month = 0
	//Definición de variables que permiten el guardado y manipulación de la fecha actual
	Definir current_month, current_year, current_day Como Entero
	//Definición de variables que permiten el guardado y manipulación de la fecha de nacimiento
	Definir birth_day, birth_month, birth_year, age_months Como Entero
	//Variables auxiliares para precisar días y meses a mostrar
	Definir d, m, a Como Entero
	//*********************************************************************
	Escribir "Indique la fecha de hoy: (en formato DD / MM / AAAA)"
	Leer current_day, current_month, current_year
	Escribir "Indique su fecha de nacimiento: (en formato DD / MM / AAAA)"
	// ********************************************************************
	Escribir "Qué Día nació?"
	Leer birth_day
	Escribir "¿De qué mes?"
	Leer birth_month
	Escribir "¿Del año?"
	Leer birth_year
// Validaciones
	//Validación de mes
	Repetir
		Si birth_month < 1 | birth_month > 12 Entonces
			Escribir "Has introducido un mes inválido"
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
		Fin Si
	Hasta Que  birth_year >= 1910 & birth_year <= current_year

//"Diccionario" de meses
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
	//Si el mes de nacimiento coincide con el mes actual
	Si current_month Es Igual A birth_month Entonces
		//Si el día de nacimiento coincide con el día actual
		Si current_day Es Igual A birth_day Entonces
			a=current_year-birth_year 
			m=0
			d=0
			age_months = (a -1) * constant_month + current_month
			Escribir "Hoy es tu cumpleaños Felicidades!"
			Escribir "Tienes " a " años de edad"
			Escribir "Tu edad en meses es: " age_months
		Fin Si
		//Si el cumpleaños ya pasó
		Si current_day Es Mayor Que birth_day Entonces
			a = current_year - birth_year
			m = 0
			d = current_day - birth_day
			age_months = a * constant_month
			//Escribir current_year, birth_year
			Escribir "Ya pasó tu compleaños por " d " días"
			Escribir "Tu edad en meses es " age_months 
		Fin Si
		//Si no ha sido su cumpleaños
		Si current_day Es Menor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = 11
			d =  birth_day - current_day
			age_months = a * constant_month + m
			Escribir current_year, birth_year
			Escribir "Todavía no has cumplido años"
			Escribir "Tienes: " a " y te faltan: " d " días para cumplir años"
			Escribir "Tu edad en meses es " age_months 
		Fin Si
	//Condiciones para cuando el mes actual es mayor que el mes del cumpleaños
	SiNo
		// Cuando faltan meses para su cumpleaños
		Si current_month Es Mayor Que birth_month Entonces
			//Si el día de nacimiento coincide con el día actual
			Si current_day Es Igual Que birth_day Entonces
				a = current_year - birth_year 
				m = current_month - birth_month
				d = 0 
				age_months = (a * constant_month) + m
				Escribir "Tu cumpleaños fue hace: " m " Meses"
				Escribir "Tu edad en meses es: " age_months
			Fin Si
			//Si el dia del cumpleaños ya pasó
			Si current_day Es Mayor Que birth_day Entonces
				a = current_year - birth_year
				m = current_month - birth_month
				d = current_day - birth_day
				age_months = (a * constant_month) + m
				Escribir "Tu cumpleaños fue hace: " d " Días y " m " Meses" 
				Escribir "Tu edad en meses es " age_months
			Fin Si
			//Si el dia del cumpleaños no ha pasado
			Si current_day Es Menor Que birth_day Entonces
				a = current_year - birth_year
				m = current_month - birth_month
				d = birth_day - current_day
				d = 30 - d
				age_months = (a * constant_month) + m
				Escribir "Tu cumpleaños fue hace: " m " meses y " d " Días"
				Escribir "Tu edad en Meses es: " age_months
				
			Fin Si
	//Condiciones para cuando el mes actual es menor que el mes del ccumpleañero		
		SiNo
			//Si el mes actual es menor que el mes de nacimiento
			Si current_month Es Menor Que birth_month Entonces
				//Si el día de nacimiento coincide con el día actual
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = 30 - d
					age_months = (a * constant_month) + m
					Escribir ": Tu compleaños será dentro de: " m " Meses"
					Escribir "Tu edad en meses es: " age_months
				FinSi
				//Si todavía faltan días y meses
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = birth_day - current_day
					age_months = (a * constant_month) + m
					Escribir "Tu cumpleaños va a ser en: " m " Meses" " y "  d " Días" 
					Escribir "Tu edad en meses es " age_months
				Fin Si
				//Si ya pasó el día y solo le faltan meses
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = current_day - birth_day
					age_months = (a * constant_month) + m
					Escribir "Tu cumpleaños va a ser en: " d " Días y " m " Meses" 
					Escribir "Tu edad en meses es " age_months
				Fin Si
			Fin Si
		Fin Si
	Fin Si
//Versión simplificada con un sesgo en los meses del año actual
	//Input de la edad
	Escribir "¿Qué edad tiene?"
	Leer age_years
	Escribir "¿Cuál es el año actual?"
	Leer current_year
	//Obtención del año de nacimiento
	birth_year = current_year - age_years
	age_months = age_years * constant_month 
	Escribir "Usted ha nacido en el año: " birth_year
	//Si no se agregan condiciones el algoritmo, da como resultado la edad en meses a diciembre
	Escribir "Su edad en meses es: " age_months
	
FinAlgoritmo
