Algoritmo lista_compras
	//Algoritmo lista de compra con arreglos
	definir limite, i como Entero
	limite = 5
	cosa = ''
	cant = 0
	Dimension cosas[5];
	Dimension cantidad[5];
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "�Qu� cosa va a agregar?"
		leer cosa 
		cosas[i] = cosa
		Escribir "�Qu� cantidad tiene que comprar?"
		leer cant
		cantidad[i] = cant
	Fin Para
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Necesita comprar " "- " cantidad[i] " " cosas[i]
	Fin Para
	
FinAlgoritmo
