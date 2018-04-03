#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 9 sod2

; Write a function sod2 in Racket that takes three lists x, y and z of equal length and
; containing only 0's and 1’s. It should return a list containing a 1 where the number of 1’s in a given
; position in x, y and z contains an odd number of 1’s, and 0 otherwise.

; Example: (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; Result: '(0 1 1 0 1 0 0 1)


; I wrote this function on the idea through the example given was that all lists would be
; of same size and elements of the lists would only containing 1s and 0s. If this was
; not the case u would have to modify this function to rectify that.

; sod2 function
(define (sod2 x y z); Declare function and take in 3 lists
  (if(null? x);check if x list is equal to null(if first time return empty list. otherwise return list with correct element in proper positions)
  '()
  (if (or (= 1 (car x) (car y) (car z)); check if all the first elements in the 3 lists are = 1
          (and (= 1 (car x)) (= 0 (car y) (car z)));or if element in x is = 1 and y and z are = 0
          (and (= 1 (car y)) (= 0 (car x) (car z)));or if element in y is = 1 and x and z are = 0
          (and (= 1 (car z)) (= 0 (car y) (car x))) );or if element in z is = 1 and y and x are = 0
     (cons 1 (sod2 (cdr x) (cdr y) (cdr z)));if any of the statements are true above cons 1 to the function call sod2 using the cdr(lists minus the first element) of the 3 lists
     (cons 0 (sod2 (cdr x) (cdr y) (cdr z)));if any of the statements are false above cons 0 to the function call sod2 using the cdr(lists minus the first element) of the 3 lists
  )
  )
)  

;Testing

;define 6 lists
(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define a (list 1 0 1 1 0 1))
(define b (list 1 1 1 0 1 1))
(define c (list 0 1 0 0 1 1))

;Tests
(displayln '(sod2 results on (x y z) and (a b c)))
(sod2 x y z)
(sod2 a b c)

;results
;(0 1 1 0 1 0 0 1)(x y z)
;(0 0 0 1 0 1)(a b c)