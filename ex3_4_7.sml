(* Write a function that takes a list of integers as argument and return a pair
* consisting of the sum of the even positions and the sum of the odd positions
* of the list. You should not use any auxiliary functions. *)

fun sumOfEvenAndOdd(nil) = [0, 0]
| sumOfEvenAndOdd([x:int]) = [x, 0]
| sumOfEvenAndOdd(x::y::ys : int list) =
    let
        val temp = sumOfEvenAndOdd(ys)
    in
        [x + hd(temp), y + hd(tl(temp))]
    end;

sumOfEvenAndOdd([1, 2, 3, 4, 5, 6, 7]);
