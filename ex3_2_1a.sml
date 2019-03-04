(* The factorial function that takes an integer n>=1 and produces the product
* of all the integers from 1 up to n. *)

fun factorial(n:int):int =
    if n = 1 then 1 else n*factorial(n-1);

val result = factorial(10);

print(Int.toString(result));
