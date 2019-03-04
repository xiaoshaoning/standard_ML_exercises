(* Exercise 3.1.1 Write functions to compute the following:
* a) The cube of a real number
* b) The smallest of the three components of a tuple of type int * int * int
* c) The third element of a list. The function need not behave properly if given
* an argument that is a list of length 2 or less.*)

fun smallest_of_three_component(my_tuple: int*int*int):int =
    let
        val x_1 = #1(my_tuple);
        val x_2 = #2(my_tuple);
        val x_3 = #3(my_tuple)
    in
        if x_1 > x_2 then
            if x_2 > x_3 then x_3
            else x_2
        else if x_1 > x_3 then x_3
            else x_1
    end;

val output = smallest_of_three_component((2, 4, 1));

print(Int.toString(output));
