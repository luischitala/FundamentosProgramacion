Algoritmo decimalAOctal
	//Realizar un algoritmo que lea un número y lo convierta a octal
	escribir "Ingrese numero decimal:"
	Leer num
	octal = 0
	i = 0
	Repetir
		r <- num MOD 8
		octal <- octal+10^i*r
		i <- i + 1
		num <- trunc(num/8)
	Hasta Que num < 8
	octal = octal + 10 ^ i * num
	Escribir "El número " num " en base octal es: " octal
FinAlgoritmo
