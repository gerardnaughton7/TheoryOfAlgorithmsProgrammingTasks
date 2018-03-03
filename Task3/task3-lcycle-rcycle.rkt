#lang racket

;Gerard Naughton G00209309 Theory of Algotithms
;Task 3

;Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
;list as input and returns the list cyclically shifted one place to the left. The second
;is called rcycle, and it shifts the list cyclically shifted one place to the right.

;myAppend function appends one list to the end of the other
(define (myAppend x y)
 (if (null? x) y
  (cons (car x) (myAppend (cdr x) y))));recursively keep adding the next element of x to the head of new list

;lcycle function that shifts the list cyclically one place to the left
(define (lcycle l); define function name and parameter
  (if (null? l); if null return empty list
      '()
      (myAppend (cdr l) ;get the 2nd element onward of the list l
              (cons (car l) ;get first element in l and create a list
                    '()))));which we will append to the previous list 

; Function removes last element in a list Adapted from: https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme
(define (removeLast l);define function name and parameter
    (if (null? (cdr l));if next element in list is null
        '() 
        (cons (car l) (removeLast (cdr l))))) ;otherwise keep adding till list

; Function removes last element in a list Adapted from: https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme
(define (getLast l)
  (cond ((null? (cdr l)) (car l))
        (else (getLast (cdr l)))))

; rcycle function that shifts the list cyclically one place to the right
; Uses removeLast method which uses more basic functions belonging to racket
(define (rcycle l); define function name and parameter 
  (if (null? l) ;if null return empty list
      '()
      (cons (getLast l) ; Last function gives last element in list
              (removeLast l); call removeLast function which return list with last element removed and then appends rest of list to the last element
                    )))

;rcycle2 function that shifts the list cyclically one place to the right. Uses append and reverse built in functions to make it easier to resolve
;This function uses the reverse function twice to remove the last element of the list 
; and doesnt require the removeLast function
(define (rcycle2 l); define function name and parameter 
  (if (null? l);if null return empty list
      '()
      (append (cons (last l) ; Last function gives last element in list
              (reverse(cdr(reverse l)))); removes last from list then apends the rest of list to the last element
                    )))



;Testing

;define 2 lists
(define l(list 1 2 3 4 5))
(define l2 (list 10 20 50 100 120))

;lcycle
(lcycle l)
(lcycle l2)

;rcycle
(rcycle l)
(rcycle l2)

;rcycle2
(rcycle2 l)
(rcycle2 l2)

;Results should show:
;'(2 3 4 5 1)
;'(20 50 100 120 10)
;'(5 1 2 3 4)
;'(120 10 20 50 100)
;'(5 1 2 3 4)
;'(120 10 20 50 100)