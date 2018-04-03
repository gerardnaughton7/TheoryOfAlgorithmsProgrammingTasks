#lang racket

;Gerard Naughton G00209309 Theory of Algotithms
;Task 1

;Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
;a single positive integer and return true if the number is a prime and false otherwise.
;Call the function decide-prime
;What is a prime?
;A prime number is a number that is divisible only by itself and 1

(define (decide-prime? x) ; function called decide-prime as specified
    (not
        (for/or [(i (in-range 2 x))] ; if number returns true/#t for/or will return the result as false/#f and vice versa
            (integer? (/ x i))))) ; checking if result is a whole number, if returns true it will mean it is not a prime number

; Checking the function with numbers 2(2 is the only even prime number), 6 , 11
(decide-prime? 2)

(decide-prime? 6)

(decide-prime? 11)

;result should be #t #f #t in that order

