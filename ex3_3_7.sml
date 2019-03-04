(* There is a recursive definition of the square of a nonnegative integer: 0^2 =
* 0 (basis), and n^2 = (n-1)^2 + 2*n - 1. *)

fun square(0) = 0
| square(n) = square(n-1) + 2*n - 1;

square(3);
