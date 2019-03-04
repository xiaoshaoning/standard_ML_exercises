(* The function from exercise 3.2.1 d that computes x^i *)

fun power(x:real, 0) = 1.0
| power(x, n) = x * power(x, n-1);

power(3.1, 2);
