#lang racket

;Gerard Naughton G00209309 Theory of Algotithms
;Task 4

;Write a function sublsum in Racket that takes a list (of integers)
;as input and returns a list of sublists of it that sum to zero.
;For this problem, you can use the combinations built-in function.
;Note the order of the sublists and their elements doesn’t matter.

; myAdd function adds all the elements in the list together
(define (myAdd l);define function and set parameters
  (if(not(null? l));check if list is empty
  (for/sum ((i l))
    i)
  1
  ))

;sublsum function
(define (sublsum l);define function and set parameters
  (for ([e (in-list (combinations l) )]);loop through all the combinations in the list
    (if(= 0 (myAdd e));if this sublist when added together is = 0 display this sublist
       (displayln e)
       '())));else do nothing

;Testing

;define 3 lists
(define l(list 1 2 3 4 5))
(define l1(list 1 2 3 4 -5))
(define l2(list 1 2 3 4 -5 -2 3 7))

;Test
(displayln '(List l sublists))
(sublsum l)
(displayln '(List l1 sublists))
(sublsum l1)
(displayln '(List l2 sublists))
(sublsum l2)
