Algoritmo lista_compras
	//Asignador de precios de platos de cocina 
	definir limite, i como Entero
	limite = 0
	receta = ''
	costo = 0

	
	Escribir "Por favor ingrese la cantidad de recetas a agregar: "
	leer limite
	Dimension recetas[limite];
	Dimension costos[limite];
	Dimension precios[limite];
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "¿Qué receta va a agregar?"
		leer receta
		recetas[i] = receta
		Escribir "¿Qué costo tiene su receta?"
		leer costo
		costos[i] = costo
		precio = costo * 3.66
		precios[i] = precio
	Fin Para
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "La receta " recetas[i] " tiene un costo de: $" costos[i] " por lo tanto tendría que venderse en: $" precios[i]
	Fin Para
	
FinAlgoritmo
