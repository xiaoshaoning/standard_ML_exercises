(* Exercise 7.2.3: Write functions to perform the following tasks:
*  a) Cycle an array A of length n by one position.
*  b) Create a list of the elements of an array A of length n, in order,
*  starting at position 0.
*  c) Reverse an array A of length n.
*  d) Given a function f and an integer n, create a function g that applies f to
*  each element of an array of length n. Function g returns an array of the n
*  results.
* *)
open Array;


fun cycle(A: int array) =
let
    val aList = toList(A)
in
    tl(aList)@[hd(aList)]
end;

val A = array(10, 0);
update(A, 1, 1);
update(A, 2, 2);
update(A, 3, 3);
update(A, 4, 4);
update(A, 5, 5);
update(A, 6, 6);
update(A, 7, 7);
update(A, 8, 8);
update(A, 9, 9);

cycle(A);

fun reverseArray(A : int array) = fromList(rev(toList(A)));

reverseArray(A);

fun applyFunctionOnArray(f, A : int array) =
let
    val aList = toList(A)
in
    fromList(map f aList)
end;

val f = fn x => 2*x;

applyFunctionOnArray(f, A);
