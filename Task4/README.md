# Task 3 Shifting lists Cyclically

## Objective
Provided from our Lecturer Ian Mcloughlin

<p><img src="images/task3.png" width="500" length="300"></p>

## Algorithm

For this task, it sounds pretty simple and for the left cycle it is not too hard. As for the right cycle there is a bit more work involved.

Left Cycle:
Requires us to remove the start element of list and place it at the end of the list. I will do this by getting the cdr of the list and appending it to the car of the list.

Right Cycle: Requires us to remove the last element of the list and place it at the front of the list. 


## Solution

Code, the task3.rkt file contains comments 

```
;myAppend function
(define (myAppend x y)
 (if (null? x) y
  (cons (car x) (myAppend (cdr x) y))))

;lcycle function
(define (lcycle l)
  (if (null? l)
      '()
      (myAppend (cdr l)
              (cons (car l)  
                    '()))))

; removeLast
(define (removeLast l)
    (if (null? (cdr l))
        '() 
        (cons (car l) (removeLast (cdr l))))) 

; getLast 
(define (getLast l)
  (cond ((null? (cdr l)) (car l))
        (else (getLast (cdr l)))))

; rcycle
(define (rcycle l)
  (if (null? l) 
      '()
      (cons (getLast l) 
              (removeLast l)
                    )))

; rcycle2 
(define (rcycle2 l) 
  (if (null? l)
      '()
      (append (cons (last l)
              (reverse(cdr(reverse l))))
                    )))

```
## Conclusion

For what seemed like a relatively easy task it quickly changed when only allowed use the basic functions. Took me a while to get it working but I got there in the end. I created a second rcycle function which uses racket functions that make the job alot easier, such as append and last.

## References

https://stackoverflow.com/questions/13175152/scheme-getting-last-element-in-list

https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme
