Algoritmo sin_titulo
	//Realizar un algoritmo que lea dos n�meros y los multiplique utilizando el m�todo
	//Multiplicaci�n rusa
	
	c = 0
	
	Escribir "Por favor ingrese el multiplicador: "
	leer m
	Escribir "Por favor ingrese el multiplicando: "
	leer mc
	
	a = m
	b = mc
	
	Mientras a <> 0 Hacer
		si a MOD 2 <> 0 Entonces
			c = c + b
		FinSi
		
		a = trunc(a / 2)
		b = b * 2
		
	FinMientras
	
	Escribir  "El resultado de la multiplicaci�n es: " m " * " mc " = " c
	
FinAlgoritmo
