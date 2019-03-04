(* Exercise 3.1.1 Write functions to compute the following:
* a) The cube of a real number
* b) The smallest of the three components of a tuple of type int * int * int
* c) The third element of a list. The function need not behave properly if given
* an argument that is a list of length 2 or less.*)

fun thirdElement(x)  =
    let
        fun nthElement(x, n) =
            if n = 1 then hd(x)
            else nthElement(tl(x), n-1)
    in
        nthElement(x, 3)
    end;

val output = thirdElement([1, 2, 3, 4]);
print(Int.toString(output));
