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
	(print "La suma es: ~d" (+ a b))
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

#|Crear un algoritmo en Lisp que capture las notas de un 
estudiante y determine si el estudiante aprobó la materia, 
se aprueba con una nota mayor a 3.0, el rango de calificación 
es de 0 hasta 5.|#

(defun NotasEstudiante()
	(print "Ingrese la nota 1: ")
	(setq nota1 (read))
	(print "Ingrese la nota 2: ")
	(setq nota2 (read))
	(print "Ingrese la nota 3: ")
	(setq nota3 (read))
	(if (> (+ nota1 nota2 nota3) 2.9)
		(print "Aprobó la materia")
		(print "Reprobó la materia")
	)
)

(NotasEstudiante)

#|Crear un algoritmo en Lisp que lea tres números por 
consola e imprima solo el número mayor entre los 
ingresados.|#

(defun mayorde3()
	(print "Ingrese el primer numero: ")
	(setq n1 (read))
	(print "Ingrese el segundo numero: ")
	(setq n2 (read))
	(print "Ingrese el tercer numero: ")
	(setq n3 (read))
	(if (> n1 n2)
		(print "El numero mayor es: ~a" n1)
		(if (> n2 n3)
			(print "El numero mayor es: ~a" n2)
			(print "El numero mayor es: ~a" n3)
		)
	)
)

(mayorde3)

#|Crear un algoritmo en Lisp que reciba un número dentro del rango
1 a 12 y de acuerdo al número imprima el mes correspondiente.|#

(defun Mes()
	(print "Ingrese un numero entre el 1 y el 12: ")
	(setq mes (read))
	(cond
		((= mes 1)(print "mes de Enero"))
		((= mes 2)(print "mes de Febrero"))
		((= mes 3)(print "mes de Marzo"))
		((= mes 4)(print "mes de Abril"))
		((= mes 5)(print "mes de Mayo"))
		((= mes 6)(print "mes de Junio"))
		((= mes 7)(print "mes de Julio"))
		((= mes 8)(print "mes de Agosto"))
		((= mes 9)(print "mes de Septiembre"))
		((= mes 10)(print "mes de Octubre"))
		((= mes 11)(print "mes de Noviembre"))
		((= mes 12)(print "mes de Diciembre"))
	)

)

(Mes)

#|Crear un algoritmo en Lisp que solo reciba números positivos, 
una vez el usuario digite un número negativo finalice.|#

(defun Positivos(value)
	(cond 
		((> value 0)
			(print "Ingrese un nuero positivo: ")
			(set value (read))
			(Positivos value)
		)
		((print "Numero negativo."))
	)
)

(Positivos 2)


#|Escribir un algoritmo sencillo en Lisp que lea una de las 5 
vocales e imprima en qué posición del alfabeto se encuentra.|#

(defun vocales()
	(print "ingrese una vocal: ")
	(setq vocal (read))
	(cond
		((= vocal "a") (print "La vocal esta en la posicion 1"))
		((= vocal "e") (print "La vocal esta en la posicion 2"))
		((= vocal "i") (print "La vocal esta en la posicion 3"))
		((= vocal "o") (print "La vocal esta en la posicion 4"))
		((= vocal "u") (print "La vocal esta en la posicion 5"))
	)
)

(vocales)

#|Crear un algoritmo en Lisp que lea N números, realice la 
sumatoria de estos y los promedie, imprima dichos resultados.|#

(defun Sumatoria(n sum tope)
	(cond 
		((> n 1)
			(print "Ingrese un nuero: ")
			(setq value (read))
			(Sumatoria (- n 1) (+ sum value) tope)
		)
		(
			(print "La sumatoria es: ~a" sum)
			(print "El promedio es: ~a" (/ sum tope))
		)
	)
)

(defun main()
	(print "ingrese la cantidad de numeros a sumar: ")
	(setq tope (read))
	(Sumatoria tope 0 tope)
)

(main)


#|Crear un algoritmo en Lisp que realice una multiplicación a partir de sumas.|#

(defun Multiplicacion_Sumas()
	(print "Ingrese el primer numero: ")
	(setq num1 (read))
	(print "Ingrese el segundo numero: ")
	(setq num2 (read))
	(setq resultado 0)
	(loop for i from 1 to num2
		do(
			(set resultado (+ resultado num1))
		)
	)
	(print "La multiplicacion es: ~a" resultado)
)

(Multiplicacion_Sumas)


#|Crear un algoritmo en Lisp que imprima un triángulo de 
asteriscos, la base de dicho triangulo estará dada por un 
número que se lee por consola.|#

(defun triangulo()
	(print "ingrese la base para el triangulo: ")
	(setq base (read))
	(setq aux base)
	(setq i 1)
	(loop for q from 1 to aux
		do(loop for a from 0 to base
			do (print " ")
		)
		do(loop for b from 0 to i
			do (print "*")
		)
		do(terpri)
		do(setq base (- base 1))
		do(setq i + i 1)
	)
)

(triangulo)


#|Construir un algoritmo en Lisp que imprima un cuadrado de lado 
N, el cuadrado está construido a partir de una secuencia desde
el número uno hasta el número N ingresado por el usuario.
Ejemplo: N=2
Como N es igual a 2, se realiza un cuadrado 2x2:
1 2
1 2|#

(defun Cuadrado()
	(print "Ingrese el tamaño: ")
	(setq tam (read))
	(loop for i from 1 to tam
		do(loop for j from 1 to tam
			do(princ j)
            do(princ " ")
		)
        do(terpri)
	)
)

(Cuadrado)


#|Crear un menú de opciones en Lisp que imprima la opción seleccionada, 
el objetivo de esto, es crear una plantilla modelo para cuando se tenga 
un menú de opciones. |#

(defun menu()
	(print "1) opcion 1")
	(print "2) opcion 2")
	(print "3) opcion 3")
	(print "Ingrese el numero correspondiente a la opcion: ")
	(setq opc (read))
	(cond
		((= opc 1) (print "La opcion seleccionada es la: 1"))
		((= opc 2) (print "La opcion seleccionada es la: 2"))
		((= opc 3) (print "La opcion seleccionada es la: 3"))
	)
)

(menu)

#|Crear un menú en Lisp que permita seleccionar al usuario que operación
realizar sobre dos números que son leídos por consola.\nLas opciones 
son: sumar, multiplicar, y restar.|#
(defun Suma()
	(print "ingrese el valor de a")
	(setq a (read))
	(print "ingrese el valor de b")
	(setq b (read))
	(print "La suma es: ~d" (+ a b))
)

(defun Resta()
	(print "ingrese el valor de a")
	(setq a (read))
	(print "ingrese el valor de b")
	(setq b (read))
	(print "La resta es: ~d" (+ a b))
)

(defun Multiplicacion()
	(print "ingrese el valor de a")
	(setq a (read))
	(print "ingrese el valor de b")
	(setq b (read))
	(print "La multiplicacion es: ~d" (+ a b))
)

(defun menu()
	(print "1) Suma")
	(print "2) Resta")
	(print "3) Multiplicacion")
	(print "Ingrese el numero correspondiente a la opcion: ")
	(setq opc (read))
	(cond
		((= opc 1) (Suma))
		((= opc 2) (Resta))
		((= opc 3) (Multiplicacion))
	)
)

(menu)

#|   |#

#|Construir un algoritmo F1 que calcule la media de los 
cuadrados de las ra ́ıces de la ecuacíon ax2+bx+c = 0.
Por ejemplo:   (F1 1 -5 6) ---> 6.5|#

(defun cuadrado (x)
	(* x x)
)

(defun media (x y)
	(/ (+ x y) 2)
)

(defun media_cuadrado (x y)
	(media (cuadrado x) (cuadrado y))
)

(defun F1 (a b c)
	(let (
			(aux1 (- b))
			(aux2 (sqrt (- (* b b)(* 4 a c))))
			(aux3 (* 2 a))
		)
		(media_cuadrado  (/ (+ aux1 aux2) aux3)(/ (- aux1 aux2) aux3))
	)
)

(F1 2 -4 3)