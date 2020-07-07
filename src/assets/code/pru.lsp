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

(read)