# Task 2 Collatz-list

## Decide Prime

## Objective
Provided from our Lecturer Ian Mcloughlin

<p><img src="Images/task2.PNG" width="500" length="300"></p>

## Algorithm



## Solution

```
(define (collatz-list n);
  (if (= n 1)
      (cons n true)
      (cons n(if (integer? (/ n 2)
          (collatz-list (/ n 2))
          (collatz-list (+ 1 (* n 3)))))
      )
  )

```

## Conclusion

## References
