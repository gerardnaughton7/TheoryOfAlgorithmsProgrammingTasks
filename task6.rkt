#lang racket
;Gerard Naughton G00209309 Theory of Algotithms

;Task 6

;Write a function hamming-distance in Racket that takes two lists and returns the number of
;positions in which they differ.

;Example given:> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) 5

;I wrote this function on the idea through the example given was that both lists would be
;of same size. If this was not the case u would have to modify this function to rectify that.

;Hamming-distance function
(define (hamming-distance l1 l2)
  (if(null? l1); if list null return nothing
   0
  (if(= (car l1) (car l2));check if elements match
        (hamming-distance (cdr l1) (cdr l2));if so call hamming-distance on the car of both lists
        (+ 1 (hamming-distance (cdr l1) (cdr l2))); 
        );recurse through list adding 1 at a time
  )
)

;Testing

;define 3 list
(define l1 (list 1 0 1 1 0 0))
(define l2 (list 1 0 1 1 0 1))
(define l3 (list 0 6 0 0 1 1))

;Tests
(displayln '(Hamming-distance results on (l1 l2)(l1 l3)(l2 l3)))
(hamming-distance l1 l2)
(hamming-distance l1 l3)
(hamming-distance l2 l3)

;results
;1
;5
;4
