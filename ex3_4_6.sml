(* Exercise 3.4.6: Write a version of sumPairs of Example 3.18 that sums each
* component of the pairs separately, returning a pair consisting of the sum of
* the first components and the sum of the second components. *)

fun sumPair([(x:int, y:int)]): int*int  = (x, y)
| sumPair((x, y)::xs) =
    let
        val temp = sumPair(xs)
    in
        (x + #1(temp), y + #2(temp))
    end;

sumPair([(1, 2), (3, 4), (5, 6), (7, 8), (9, 10)]);
