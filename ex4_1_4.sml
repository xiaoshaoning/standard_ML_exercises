(* Exercise 4.1.4: Write a function that, given n, prints 2^n X's using only
* log2(n) recursive calls. *)
fun print_power_2_n_x(k:int) =

let
    fun power_2_2_k(0) = 2
    | power_2_2_k(n:int) =
        let
            val temp = power_2_2_k(n-1)
        in
            temp * temp
        end;

    fun print_m(0) = print("")
    |   print_m(m:int) = (print("X"); print_m(m-1))
in
    print_m(power_2_2_k(k))
end;

print_power_2_n_x(2);

