(* elements of ML programming, exercise 3.4.1 Write a succinct function to compute x^1000 *)

fun power_1000(x:real) =
    let
        fun power(y:real, n:int) =
            if n = 0 then 1.0
            else y * power(y, n-1)
    in
        power(x, 1000)
    end;

power_1000(1.001);
