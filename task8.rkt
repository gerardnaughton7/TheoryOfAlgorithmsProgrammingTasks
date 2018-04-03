#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 8

; Write a function chse in Racket that takes three lists x, y and z of equal length
; and containing only 0’s and 1’s. It should return a list containing the elements of y
; in the positions where x is 1 and the elements of z otherwise.

; Example:(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; Result: '(0 1 0 1 0 0 1 1) 

; I wrote this function on the idea through the example given was that all lists would be
; of same size and elements of the lists would only containing 1s and 0s. If this was
; not the case u would have to modify this function to rectify that.


;chse function
(define (chse x y z)
  (if(null? x); if list null return nothing
   '()
   (if(= (car x) 1);check if the first element in x is = 1
        (cons (car y) (chse (cdr x) (cdr y) (cdr z)));if so add first element of y to the new list and call the chse function of the remaining(cdr) of lists
        (cons (car z) (chse (cdr x) (cdr y) (cdr z)));otherwise add first element of z to the new list and call the chse function of the remaining(cdr) of lists
   )
 )
)
;Testing

;define 6 lists
(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define a (list 1 0 1 1 0 0))
(define b (list 1 1 1 0 1 0))
(define c (list 0 1 0 0 1 1))

;Tests
(displayln '(chse results on (x y z) and (a b c)))
(chse x y z)
(chse a b c)

;results
;(0 1 0 1 0 0 1 1)(x y z)
;(1 1 1 0 1 1)(a b c)
