# Task 6 Hamming-Distance

## Objective
Provided from our Lecturer Ian Mcloughlin

<p><img src="images/task6.png" width="500" length="300"></p>


## Algorithm

For this task, we were asked to calculate the hamming distance of 2 lists. This means return the number of positions where the 2 list are different.

Hamming-distance:
From following the example give to us by our lecturer i took the idea that inputed lists to the function would be of equal size. 
In my function presuming that both lists are of same size i checked to see if one of the lists was null. if null i return 0 and if not i check the car(first element) of each list and see if they are the same. If equal i call the hamming-distance on the cdr(remaining of list without first element) on both list. if they are different i add 1 and call hamming-distance again on the cdr of both lists. Recursively checking the 2 lists against each other and outputing the number of positions they differ.

## Solution

Code, the task6.rkt file contains comments for this code

```
;Hamming-distance function
(define (hamming-distance l1 l2)
  (if(null? l1)
   0
  (if(= (car l1) (car l2))
        (hamming-distance (cdr l1) (cdr l2))
        (+ 1 (hamming-distance (cdr l1) (cdr l2))) 
        )
  )
)

```
## Conclusion

From completing task5 Hamming-weight i found this task alot easier. By using my hamming-weight2 function i was able to modify if by simply changing the second if statement and check if the car of each list is equal and changing the parameters to hamming-distance function to take 2 lists. From reading up the hamming distance online it says "the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different" which is why my function only covers the lists of equal length. 

## References

https://en.wikipedia.org/wiki/Hamming_distance
