#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 6

;Write a function .

(define (hamming-distance l1 l2)
  (if(null? l1); if list null return nothing
   0
  (if(= (car l1) (car l2));check if elements match
        (hamming-distance (cdr l1) (cdr l2));if so call hamming-distance on the car of both lists
        (+ (car l1) (car l2) (hamming-distance (cdr l1) (cdr l2))); 
        );recurse through list adding each element together
  )
)

(define l1 (list 1 0 1 1 1 0))
(define l2 (list 1 0 1 1 0 1))
(define l3 (list 0 0 0 0 0 0 1 1))

(hamming-distance l1 l3)