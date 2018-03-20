#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 7

; Write a function maj in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1
; where two or more of x, y and z contain 1’s, and 0 otherwise.

;Example: (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;Answer: '(0 0 0 1 0 1 1 1) 

;I wrote this function on the idea through the example given was that all lists would be
;of same size. If this was not the case u would have to modify this function to rectify that.
;My function can work with not just ones and zero but other numbers too.

;maj function
(define (maj x y z)
  (if(null? x); if list null return nothing
   '()
   (if(= (car x) (car y));check if x and y match at specific position 
        (cons (car x) (maj (cdr x) (cdr y) (cdr z)));if so add first element of x to the new list and call maj of the remaining(cdr) of lists
        (if(= (car x) (car z));else if x and z match at specific position 
           (cons (car x) (maj (cdr x) (cdr y) (cdr z)));if so add first element of x to the new list and call maj of the remaining(cdr) of lists 
           (cons (car z) (maj (cdr x) (cdr y) (cdr z)));if so add first element of z to the new list and call maj of the remaining(cdr) of lists
        )
   )
 )
)
;Testing

;define 3 list
(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define a (list 1 0 1 1 0 0))
(define b (list 1 1 1 0 1 0))
(define c (list 0 1 0 0 1 1))

;Tests
(displayln '(MAJ results on (x y z) and (a b c)))
(maj x y z)
(maj a b c)

;results
;(0 0 0 1 0 1 1 1)(x y z)
;(1 1 1 0 1 0)(a b c)
