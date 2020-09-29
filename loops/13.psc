Algoritmo sin_titulo
	//Realizar un Algoritmo que lea un número y lo convierta a hexadecimal
	
	escribir "Escriba un numero Entero para pasarlo a Hexadecimal"
	leer num
	x=num
	Repetir
		Si x mod 16>9 y x mod 16<16 Entonces
			Si x mod 16=10 Entonces
				acum="A"+acum
			finsi
			Si x mod 16=11 Entonces
				acum="B"+acum
			finsi
			Si x mod 16=12 Entonces
				acum="C"+acum
			finsi
			Si x mod 16=13 Entonces
				acum="D"+acum
			finsi
			Si x mod 16=14 Entonces
				acum="E"+acum
			finsi
			Si x mod 16=15 Entonces
				acum="F"+acum
			finsi
		Sino
			acum=ConvertirATexto(x mod 16)+acum
		Fin Si
		x=trunc(x/16)
	Hasta Que x<=1
	Si x>0 Entonces
		acum=ConvertirATexto(x)+acum
	Fin Si
	escribir num," Decimal = ",acum," en Hexadecimal"
	
FinAlgoritmo
