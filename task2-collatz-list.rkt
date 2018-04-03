#lang racket

;Gerard Naughton G00209309 Theory of Algotithms
;Task 2

;Write, from scratch, a function in Racket that takes a positive integer n0 as input
;and returns a list by recursively applying the following operation, starting with the
;input number.

;Function applied is when n is a positive number devide by 2 and when negative multiply by 3 and add 1 until n = 1

;End the recursion when (or if) the number becomes 1. Call the function collatz-list.
;So, collatz-list should return a list whose first element is n0, the second element
;is n1, and so on. For example:

(define (collatz-list n);define function
  (if (= n 1);check if n = 1
      (cons n true);if n = 1 add 1 and true to list
      (cons n(if (integer? (/ n 2)); check if even number by dividing by one and checking if it is a whole number. You can use other functions like odd and even but tried to keep as basic as possible
          (collatz-list (/ n 2));if even divide n by 2
          (collatz-list (+ 1 (* n 3)))));if odd multiply by 3 and add 1
      )
  )

;test function
(collatz-list 5)

(collatz-list 23)

(collatz-list 1)

;result should be a list of n0, n1, etc ending in 1 and #t saying that it was correct.


     