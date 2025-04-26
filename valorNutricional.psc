Proceso valorNutricional
	
	Definir productos, contProductos, vNutricional, contAceptado, contRechazado Como Entero;
	Definir energia, carbohidratos, grasas, fibra, sodio Como Real;
	Definir porcCarbohidratos, porcGrasas, porcFibra, porcSodio Como Real;
	Definir continuar Como Logico;
	
	Escribir "Escriba la cantidad de productos a verificar:";
	Leer productos;
	
	Para contProductos <- 1 Hasta productos Con Paso 1 Hacer
		vNutricional <- 1;
		continuar <- Verdadero;
		
		Escribir "Producto N°", contProductos;
		
		Repetir
			Segun vNutricional Hacer
				1:
					Escribir "Ingrese el valor de energía del alimento (kCal):";
					Leer energia;
					Si !(energia >= 100 Y energia <= 200) Entonces
						continuar <- Falso;
					Fin Si
					
				2:
					Escribir "Ingrese el valor de carbohidratos (gr):";
					Leer carbohidratos;
					porcCarbohidratos <- (carbohidratos / 100) * 100;
					Si !(porcCarbohidratos >= 0 Y porcCarbohidratos <= 15) Entonces
						continuar <- Falso;
					Fin Si
					
				3:
					Escribir "Ingrese la cantidad de grasas del alimento (gs):";
					Leer grasas;
					porcGrasas <- (grasas / 100) * 100;
					Si !(porcGrasas >= 1 Y porcGrasas <= 13) Entonces
						continuar <- Falso;
					Fin Si
					
				4:
					Escribir "Ingrese las fibras del alimento (gs):";
					Leer fibra;
					porcFibra <- (fibra / 100) * 100;
					Si !(porcFibra >= 0 Y porcFibra <= 15) Entonces
						continuar <- Falso;
					Fin Si
					
				5:
					Escribir "Ingrese los gramos de sodio del alimento (gs):";
					Leer sodio;
					porcSodio <- (sodio / 100) * 100;
					Si !(porcSodio >= 0 Y porcSodio <= 2) Entonces
						continuar <- Falso;
					Fin Si
					
			Fin Segun
			
			vNutricional <- vNutricional + 1;
		Mientras Que continuar Y vNutricional <= 5
		
		Si continuar = Verdadero Entonces
			Escribir "El producto es aceptado porque corresponde a las recomendaciones.";
			Escribir "----------------------------------------------------------";
			contAceptado <- contAceptado + 1;
		SiNo
			Escribir "El producto es descartado porque no cumple con las recomendaciones nutricionales.";
			Escribir "----------------------------------------------------------";
			contRechazado <- contRechazado + 1;
		FinSi
		
	Fin Para
	
	Escribir "La cantidad de productos aceptados fué: ", contAceptado;
	Escribir "La cantidad de descartados fué: ", contRechazado;
	
Fin Proceso