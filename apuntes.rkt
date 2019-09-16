#lang racket
;;; Esto es un comentario en Scheme

;;; Variable tipo string
"Esto es un string"

;funciones para los string
"funciones para los string"
(string? "hola"); return t
(string? 5); return f

;Variable tipo numero
"Variable tipo numero"
42 ; return 42
1/2 ; return 1/2
2.34 ; return 2.34

;Funciones para los numeros
"Funciones para los numeros"

; Sumar
(+ 1 2) ; return 3
; Restar
(- 3 2) ; return 1
; Multiplicar
(* 5 2) ; return 10
; Dividir
(/ 4 2) ; return 2

(- 0 5); return -5
(- 0 -5); return 5

;Operadores
"Operadores "
+ ; return #<procedure:+>
- ; return #<procedure:->
* ; return #<procedure:*>
/ ; return #<procedure://>

;Variable tipo list
"Variable tipo list"
'(1 2 3 4 5 6 7)

;Funciones para las listas
"Funciones para las listas"
(car '(a b c)); return primer elemento
(cdr '(a b c)); return todos menos el primer elemento
(cons 'a '(b c));return agrega un elemento a la lista

;Variable tipo procedure
"Variable tipo procedure"
(define square
  (lambda (n)
    (* n n)
    )
  )

;Uso de let : (let ((var expr) ...) body1 body2 ...)
"Uso de let"
(let ((x 2)) (+ x 3)); return 5
(let ((x 2)) (- x 3)); return -1

;Ejmeplo de let
"Ejmeplo de let"
(let ([double (lambda (x) (+ x x))])
  (list (double (* 3 4))
        (double (/ 99 11))
        (double (- 2 7))))

;Condicionales
"Condicionales"
(< -1 0) ; return #t
(> -1 0) ; return #f
(if #t 'true 'false) ; return true
(if #f 'true 'false) ; return false
(if '() 'true 'false) ; return true
(if 1 'true 'false) ; return true
(if '(a b c) 'true 'false) ; return true

;Ejemplo de condicionales
"abs"
(define abs
  (lambda (n)
    (if (>= n 0)
        n
        (- 0 n)
    )
  )
)
"reciprocal"
(define reciprocal
  (lambda (n)
    (if (and (number? n) (not (= n 0)))
        (/ 1 n)
        "oops!")))


;Negacion
"Negacion"
(not #t) ; return #f
(not "false") ; return #f
(not #f) ; return #t

;or
"or"
(or) ; return #f
(or #f) ; return #f
(or #f #t) ; return #t
(or #f 'a #f) ; return a

;null
"null"
(null? '()) ; return #t
(null? 'abc) ; return #f
(null? '(x y z)) ; return #f
(null? (cdddr '(x y z))) ; return #t

;eqv?
"eqv?"
(eqv? 'a 'a) ; return #t
(eqv? 'a 'b) ; return #f
(eqv? #f #f) ; return #t
(eqv? #t #t) ; return #t
(eqv? #f #t) ; return #f
(eqv? 3 3) ; return #t
(eqv? 3 2) ; return #f

;Tipos de datos
"Tipos de datos"
(pair? '(a . c)) ; return #t
(pair? '(a b c)) ; return #t
(symbol? '()) ; return #f
(pair? 'abc) ; return #f
(string? "Hi Mom!") ; return #t
(number? 1234567890) ; return #t



