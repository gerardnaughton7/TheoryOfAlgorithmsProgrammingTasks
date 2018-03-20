# Task 7 Hamming-Distance

## Objective
Provided from our Lecturer Ian Mcloughlin

<p><img src="images/task7.png" width="500" length="300"></p>


## Algorithm

For this task, we were asked to create a function called maj, that takes 3 equal length lists containing 1s and 0s. Our function will then compare each element of each list at the same position and return a list conatining the majority number in each position.  

Maj:
From following the example given to us by our lecturer, inputed lists to the function would be of equal size. 
In my function presuming that both lists are of same size (Step1) i check to see if one of the lists was null at the start. if null i return 0 and if not i do another (step2) if statement and check the car(first element) of the first 2 lists and see if they are the same. If equal i (step3) cons(place element into new list) the first element of list 1 and cons it to the result of calling the maj function on the remaining list( the cdr of the remain 3 lists). Allowing recursion. If they do not match i do another (step4) if statement and check if the car(first element) of the 1st and 3rd lists are equal. If they are equal i repeat step3. If they do not match i repeat step 3 once again except i cons the car(first element) of the 3rd list to the function call of maj. 
Once list 1 reaches null it should return a list of elements containing the majority element in each position for the 3 lists.

## Solution

Code, the task7.rkt file contains comments for this code

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