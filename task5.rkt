#lang racket

;Gerard Naughton G00209309 Theory of Algotithms

;Task 5

;Write a function hamming-weight in Racket that takes a list l as input and
;returns the number of non-zero elements in it.

;hamming-weight function designed this function on the bases that hamming-weight
;usually only calculates the the difference at a bit level. so it only deals in
;1s and 0s. So i just summed all the values which works well
(define (hamming-weight l)
  (if(null? l); if list null return nothing
   0
  (+ (car l) (hamming-weight (cdr l)));recurse through list adding each element together
  )
)

;Hammin-weight2 function designed this function to take not only 1s and 0s and still work.
;which meant recognising all non zero elements
(define (hamming-weight2 l)
  (if(null? l); if list null return nothing
   0
  (if(= (car l) 0);check if value is zero
        (hamming-weight2 (cdr l));if 0 recurse on its self
        (+ 1 (hamming-weight2 (cdr l)));if yes add 1 and recurse
        );recurse through list adding each element together
  )
)
; Testing

; Define 3 lists for hamming-weight
(define l1(list 1 0 1 1 1 1 1 1 0 0 0 0))
(define l2(list 0 0 0 0 0 1 1 0 1))
(define l3(list 0 0 0 0))
; Define 3 lists for hamming-weight2
(define l4(list 1 0 1 1 1 1 1 1 0 0 0 0))
(define l5(list 0 0 0 0 0 1 1 0 1))
(define l6(list 0 0 4 5 1 0 0))

; Test

(displayln '(hamming-weight function on list l1 l2 l3))
(hamming-weight l1)
(hamming-weight l2)
(hamming-weight l3)

(displayln '(hamming-weight2 function on list l4 l5 l6))
(hamming-weight2 l4)
(hamming-weight2 l5)
(hamming-weight2 l6)

;Output Should be
;7
;5
;0

;7
;3
;3

