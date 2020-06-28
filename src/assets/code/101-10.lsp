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