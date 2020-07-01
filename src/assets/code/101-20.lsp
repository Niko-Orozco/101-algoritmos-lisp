#|Construir un algoritmo en Lisp que calcule la suma de la 
resta de (a – b) y (c -d), donde a, b, c y d son iguales a 
3, 7, 1, 9.|#
(defvar a 3)(defvar b 7)
(defvar c 1)(defvar d 9)
(defvar suma (+ (- a b) (- c d)))

#|Construir un algoritmo en Lisp que eleve el numero 8 a la 
potencia 3, luego dividir por (2 * 7).|#
(defvar pot (expt 8 3))
(defvar div (/ pot (* 2 7)))

#|Crear un programa en Lisp que sume dos números los cuales son 
ingresados por consola, luego imprimir el resultado de dicha suma.|#
(defun Suma()
	(print "ingrese el valor de a")
	(setq a (read))
	(print "ingrese el valor de b")
	(setq b (read))
	(print "La suma es: ~d" (+ b d))
)

(Suma)

#|Construir un algoritmo en Lisp que dé a conocer el precio 
de la leche que compro Julián, teniendo como base que el 
pagó 20.000 pesos por 3 litros de leche y le dieron 8.000 
pesos de cambio.|#
(defun PrecioUnidad()
	(setq unidad (/ (- 20000 8000) 3))
	(print "El precio de la leche por unidad es de: ~d" unidad)
)

(PrecioUnidad)

#|Construir un algoritmo en Lisp que le dé a conocer a 
juan el precio de la chaqueta VJT que compró por 32.000 
la cual tiene un descuento del 22% y el precio del 
pantalón que le costó 27.500 pesos el cual tiene un 
descuento del 15%|#
(defun Costo()
	(setq chaqueta (- 32000 (* 32000 0.22)))
	(setq pantalon (- 27500 (* 27500 0.15)))
	(setq sum (+ chaqueta pantalon))
	(print "El precio total es de: ~d" sum)
)

(Costo)

#|Crear un algoritmo en Lisp que maneje el descuento sobre 
un precio que el usuario ingresa, el descuento también lo 
determina el usuario.|#

(defun Descuentos()
	(print "Ingrese el precio: ")
	(setq precio (read))
	(print "Ingrese el descuento sin el %: ")
	(setq descuento (read))
	(setq finalP (- precio (* precio (/ descuento 100))))
)

(Descuentos)

#|Construir un algoritmo F1 que calcule la media de los 
cuadrados de las ra ́ıces de la ecuacíon ax2+bx+c = 0.
Por ejemplo:   (F1 1 -5 6) ---> 6.5|#

(defun CUADRADO (X)
	(* X X)
)

(defun MEDIA (X Y)
	(/ (+ X Y) 2)
)

(defun MEDIA-CUADRADO (X Y)
	(MEDIA (CUADRADO X) (CUADRADO Y))
)

(defun F1 (A B C)
	(let (
			(AUX1 (- B))
			(AUX2 (SQRT (- (* B B)(* 4 A C))))
			(AUX3 (* 2 A))
		)
		(MEDIA-CUADRADO  (/ (+ AUX1 AUX2) AUX3)(/ (- AUX1 AUX2) AUX3))
	)
)

#|Crear un algoritmo en Lisp que valide si un número ingresado 
es par o impar.|#

(defun ParImpar()
	(print "Ingrese un numero: ")
	(setq var (read))
	(if (eql remainder(var 2) 0)
		(print "El numero es par")
		(print "El numero es imparpar")
	)
)

(ParImpar)


#|   |#


#|   |#


#|   |#



#|Crear un algoritmo en Lisp que solo reciba números positivos, 
una vez el usuario digite un número negativo finalice.|#

(defun Positivos()
	(setq value 2)
	(while (> value 0)
		(print "Ingrese un nuero positivo")
		(set value (read))
	)
)

(Positivos)

#|   |#


#|   |#


#|   |#


#|   |#


#|   |#


#|   |#


#|   |#


#|   |#

