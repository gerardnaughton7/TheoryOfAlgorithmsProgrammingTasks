#lang racket

;Gerard Naughton G00209309 Theory of Algotithms

;Task 5

;Write a function hamming-weight in Racket that takes a list l as input and
;returns the number of non-zero elements in it.

;a module can grants others the ability to
;change its exports by providing a mutator function, such as increment!. Adapted from : https://docs.racket-lang.org/guide/module-set.html
(module m racket
    (provide counter increment! reset!)
    (define counter 0);define counter
    (define (increment!);create mutator function to add 1 to counter
      (set! counter (add1 counter))
      )
    (define (reset!);create mutator function to reset counter back to 0
      (set! counter 0))
  )
  
  
(require 'm);import module

;Hamming-weight function using a for loop to check if elements are not equal
;to 0 and if not incrementing
(define (hamming-weight l);define function and set parameters
  (for ([e (in-list l)]);loop through elements of list
    (if(not(= 0 e));if not = 0 increment counter
      (increment!)
       '()))
  (displayln counter);when for loop finished display counter
  (reset!);reset counter when finished so can be used again
  )

;Hamming-weight2 function using recursion to check if elements in the list are
; not equal to 0 and if not incrementing the counter
(define (hamming-weight2 l);define function and set parameters
  (if(not(null? l));if list is not null, check if first element in list is not 0 and increment
     (cond
       [(not(= 0 (car l))) (increment!)]
       )
     '())
  (if(null? (cdr l));if cdr of l is null display counter if not call hamming-weight2 on the rest of list minus first element(cdr l) 
   (displayln counter);if null display counter
   (hamming-weight2 (cdr l)));else call hamming-weight2 function on cdr of l
  (reset!);reset counter when finished so can be used again
  )

; Testing

; Define 3 lists
(define l1(list 1 2 3 4 0 5 0 0 0 0 0 1 1 1 1 11))
(define l2(list 0 0 0 0 0 1 1 1 0 1 1))
(define l3(list 0 0 0 0))

; Test
(displayln '(hammingweight function on list l1 l2 l3))
(hamming-weight l1)
(hamming-weight l2)
(hamming-weight l3)

(displayln '(hammingweight2 function on list l1 l2 l3))
(hamming-weight2 l1)
(hamming-weight2 l2)
(hamming-weight2 l3)