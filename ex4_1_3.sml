(* Exercise 4.1.3: Write a function that, given integer n, prints 2^n X's, using
* n recursive calls. Hint: Compute the desired string recursively before
* printing it. *)

fun print_2_n_x(n:int) =
    let
        fun get_2_n_x(0) = ""
        | get_2_n_x(1) = "XX"
        | get_2_n_x(k:int) = get_2_n_x(k-1)^get_2_n_x(k-1)
    in
        print(get_2_n_x(n)^"\n")
    end;

print_2_n_x(5);
