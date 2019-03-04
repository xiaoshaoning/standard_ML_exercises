(* Exercise 4.1.2: Write the function comb, computing comb(n, m), in such a way that
* when we call comb(n, m) it prints n and m before printing the result. Print
* out suitable words so n, m, and comb(n, m) are clearly distinguishable from
* one another.*)

fun comb(n:int, m:int) =
let
    fun combValue(n:int, m:int, k:int, p:int):int =
        let
            fun printComb(n:int, m:int) = (
                print("comb(");
                print(Int.toString(n));
                print(", ");
                print(Int.toString(m));
                print(")=")
            )
        in
            if m = 0 then (if n = k andalso m = p then (printComb(n, m); print("1\n")) else () ; 1)
            else if n = m then (if n = k andalso m = p then (printComb(n, m); print("1\n")) else (); 1)
            else (
                if n = k andalso m = p then printComb(n, m) else ();
                if n = k andalso m = p then print(Int.toString(combValue(n-1, m, k, p) + combValue(n-1, m-1, k, p))^"\n") else ();
                combValue(n-1, m, k, p) + combValue(n-1, m-1, k, p)
            )
        end
in
    combValue(n, m, n, m)
end;

comb(6, 5);
