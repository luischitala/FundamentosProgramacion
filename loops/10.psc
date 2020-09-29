Algoritmo convertirBinario
	//Realizar un algoritmo que lea un numero y lo convierta a binario
	Definir num, binario, base, residuo Como Entero
	base = 1
	binario = 0
	Escribir "Bienvenido al conversor de números binarios"
	Escribir "Por favor ingrese un número: " 
	Leer num
	
	Mientras num > 0 Hacer
		residuo = num MOD 2
		binario = binario + residuo * base
		num = trunc(num/2)
		base = base*10
	FinMientras
	Escribir binario
	
	
FinAlgoritmo
