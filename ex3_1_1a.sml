(* Exercise 3.1.1 Write functions to compute the following:
* a) The cube of a real number
* b) The smallest of the three components of a tuple of type int * int * int
* c) The third element of a list. The function need not behave properly if given
* an argument that is a list of length 2 or less.*)

fun cube(x:real):real = x*x*x;

val output = cube(2.0);

print(Real.toString(output));
