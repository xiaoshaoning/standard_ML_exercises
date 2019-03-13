(* Exercise 7.2.1: Write expressions to performn the following operations.
* a) Create an array A of 20 elements, each of which is initially an empty list
* of reals.
* b) Create an array A of 100 reals, each of which is initially 0.
* c) Find the 30th element in an array A of 100 reals.
* d) Find the 10th element in an array A of 20 integers.
* e) Change the element with index 10 in array A to 43.
* f) Change the element with index 0 in array A to [1, 2, 3]*)

open Array;

val A = array(20, []:real list);

val A = array(100, 0.0:real);

sub(A, 30);

val A = array(20, 0);

sub(A, 10);

val A = array(20, []:int list);

update(A, 0, [1, 2, 3]);
