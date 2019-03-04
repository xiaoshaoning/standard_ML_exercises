(* Given 3 integers, produce a pair consisiting of the smallest and largest *)

fun pair(x:int*int*int):int*int =
    let
        val x_1 = #1(x);
        val x_2 = #2(x);
        val x_3 = #3(x);
    in
        if x_1 > x_2 then
            if x_2 > x_3 then (x_1, x_3)
            else if x_1 > x_3 then (x_1, x_2)
                 else (x_3, x_2)
        else if x_1 > x_3 then (x_2, x_3)
             else if x_3 > x_2 then (x_3, x_1)
                  else (x_2, x_1)
    end;

val (max, min) = pair((1, 2, 3));

print(Int.toString(max));
print("\n");
print(Int.toString(min));
print("\n");
