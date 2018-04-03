#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 10 lstq

; Write a function lstq in Racket that takes as arguments two lists l and m of equal
; length and containing numbers. It should return d, the distance given by the sum of
; the square residuals between the numbers in the lists:

; This means take the ith element of m from the ith
; element of l and square the result for all i.
; Then add all of those to get d.

; For example:
; > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
; Ans: 54.61

; I wrote this function on the idea through the example given was that all lists would be
; of same size. If this was not the case u would have to modify this function to rectify that.

; square function - created a simple square function to use within my lstq function
(define (square x)
  (* x x )
)
   
; lstq function
(define (lstq x y); Declare function and take in 2 list x and y
  (if(null? x);check if x list is equal to null(if list equal to null return 0) 
  0
  (+ (square(- (car x) (car y))) (lstq (cdr x) (cdr y)));else add the result of(squaring the car x- car y(first element of each list)
  )                                                     ;to the recursion call of lstq on the remaining elements in the list(ie the cdr of x and y)
)  
;Testing

;define 4 lists
(define x (list 4.5 5.1 6.2 7.8))
(define y (list 1.1 -0.1 6.1 3.8))

(define a (list 3.4 -5.2 6.7 0.1))
(define b (list 2.3 1.4 4.9 -0.2))

;Tests
(displayln '(lstq results on (x y) and (a b)))
(lstq x y)
(lstq a b)

;Expected results
;54.61(x y)
;48.099999999999994(0 0 0 1 0 1)(a b)
