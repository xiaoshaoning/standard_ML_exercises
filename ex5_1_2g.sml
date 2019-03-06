(* Exercise 5.1.2: Write the following functions as values, using fn and a
* match. g) Function comb of Fig. 3.13*)

val rec comb = fn
    (_, 0) => 1 |
    (n:int, m:int) => if n = m then 1
          else comb(n-1, m) + comb(n-1, m-1);

comb(10, 5);


