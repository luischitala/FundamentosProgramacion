Algoritmo calcular_edad_meses
//Versi�n precisa que contembla el sesgo de meses y valida la fecha en su totalidad
	//Declaraci�n de variables y constantes
	constant_month = 12
	days_month = 0
	//Definici�n de variables que permiten el guardado y manipulaci�n de la fecha actual
	Definir current_month, current_year, current_day Como Entero
	//Definici�n de variables que permiten el guardado y manipulaci�n de la fecha de nacimiento
	Definir birth_day, birth_month, birth_year, age_months Como Entero
	//Variables auxiliares para precisar d�as y meses a mostrar
	Definir d, m, a Como Entero
	//*********************************************************************
	Escribir "Indique la fecha de hoy: (en formato DD / MM / AAAA)"
	Leer current_day, current_month, current_year
	Escribir "Indique su fecha de nacimiento: (en formato DD / MM / AAAA)"
	// ********************************************************************
	Escribir "Qu� D�a naci�?"
	Leer birth_day
	Escribir "�De qu� mes?"
	Leer birth_month
	Escribir "�Del a�o?"
	Leer birth_year
// Validaciones
	//Validaci�n de mes
	Repetir
		Si birth_month < 1 | birth_month > 12 Entonces
			Escribir "Has introducido un mes inv�lido"
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
	//Validaci�n del d�a
	Repetir
		Si birth_month <1 | birth_day>days_month Entonces
			Escribir "Has introducidoun una fecha inv�lida "
		Fin Si
	Hasta Que birth_day>0 & birth_day <= days_month
	
//Verificaci�n de los casos
	//Si el mes de nacimiento coincide con el mes actual
	Si current_month Es Igual A birth_month Entonces
		//Si el d�a de nacimiento coincide con el d�a actual
		Si current_day Es Igual A birth_day Entonces
			a=current_year-birth_year 
			m=0
			d=0
			age_months = (a -1) * constant_month + current_month
			Escribir "Hoy es tu cumplea�os Felicidades!"
			Escribir "Tienes " a " a�os de edad"
			Escribir "Tu edad en meses es: " age_months
		Fin Si
		//Si el cumplea�os ya pas�
		Si current_day Es Mayor Que birth_day Entonces
			a = current_year - birth_year
			m = 0
			d = current_day - birth_day
			age_months = a * constant_month
			//Escribir current_year, birth_year
			Escribir "Ya pas� tu complea�os por " d " d�as"
			Escribir "Tu edad en meses es " age_months 
		Fin Si
		//Si no ha sido su cumplea�os
		Si current_day Es Menor Que birth_day Entonces
			a = current_year - birth_year - 1
			m = 11
			d =  birth_day - current_day
			age_months = a * constant_month + m
			Escribir current_year, birth_year
			Escribir "Todav�a no has cumplido a�os"
			Escribir "Tienes: " a " y te faltan: " d " d�as para cumplir a�os"
			Escribir "Tu edad en meses es " age_months 
		Fin Si
	//Condiciones para cuando el mes actual es mayor que el mes del cumplea�os
	SiNo
		// Cuando faltan meses para su cumplea�os
		Si current_month Es Mayor Que birth_month Entonces
			//Si el d�a de nacimiento coincide con el d�a actual
			Si current_day Es Igual Que birth_day Entonces
				a = current_year - birth_year 
				m = current_month - birth_month
				d = 0 
				age_months = (a * constant_month) + m
				Escribir "Tu cumplea�os fue hace: " m " Meses"
				Escribir "Tu edad en meses es: " age_months
			Fin Si
			//Si el dia del cumplea�os ya pas�
			Si current_day Es Mayor Que birth_day Entonces
				a = current_year - birth_year
				m = current_month - birth_month
				d = current_day - birth_day
				age_months = (a * constant_month) + m
				Escribir "Tu cumplea�os fue hace: " d " D�as y " m " Meses" 
				Escribir "Tu edad en meses es " age_months
			Fin Si
			//Si el dia del cumplea�os no ha pasado
			Si current_day Es Menor Que birth_day Entonces
				a = current_year - birth_year
				m = current_month - birth_month
				d = birth_day - current_day
				d = 30 - d
				age_months = (a * constant_month) + m
				Escribir "Tu cumplea�os fue hace: " m " meses y " d " D�as"
				Escribir "Tu edad en Meses es: " age_months
				
			Fin Si
	//Condiciones para cuando el mes actual es menor que el mes del ccumplea�ero		
		SiNo
			//Si el mes actual es menor que el mes de nacimiento
			Si current_month Es Menor Que birth_month Entonces
				//Si el d�a de nacimiento coincide con el d�a actual
				Si current_day Es Igual Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = 30 - d
					age_months = (a * constant_month) + m
					Escribir ": Tu complea�os ser� dentro de: " m " Meses"
					Escribir "Tu edad en meses es: " age_months
				FinSi
				//Si todav�a faltan d�as y meses
				Si current_day Es Menor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = birth_day - current_day
					age_months = (a * constant_month) + m
					Escribir "Tu cumplea�os va a ser en: " m " Meses" " y "  d " D�as" 
					Escribir "Tu edad en meses es " age_months
				Fin Si
				//Si ya pas� el d�a y solo le faltan meses
				Si current_day Es Mayor Que birth_day Entonces
					a = current_year - birth_year - 1
					m = birth_month - current_month
					d = current_day - birth_day
					age_months = (a * constant_month) + m
					Escribir "Tu cumplea�os va a ser en: " d " D�as y " m " Meses" 
					Escribir "Tu edad en meses es " age_months
				Fin Si
			Fin Si
		Fin Si
	Fin Si
//Versi�n simplificada con un sesgo en los meses del a�o actual
	//Input de la edad
	Escribir "�Qu� edad tiene?"
	Leer age_years
	Escribir "�Cu�l es el a�o actual?"
	Leer current_year
	//Obtenci�n del a�o de nacimiento
	birth_year = current_year - age_years
	age_months = age_years * constant_month 
	Escribir "Usted ha nacido en el a�o: " birth_year
	//Si no se agregan condiciones el algoritmo, da como resultado la edad en meses a diciembre
	Escribir "Su edad en meses es: " age_months
	
FinAlgoritmo
