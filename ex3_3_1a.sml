(* The factorial function of exercise 3.2.1 (a) *)
fun factorial(0) = 1
| factorial(n) = n * factorial(n-1);

factorial(10);
