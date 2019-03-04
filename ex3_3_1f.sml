(* The function of Exercise 3.2.1 (e) that computes the largest of a list of reals *)
fun largest([x]):real = x
| largest(x::xs) =
    let
        val temp = largest(xs)
    in
        if x > temp then x else temp
    end;

print(Real.toString(largest([3.0, 2.0, 4.0, 3.3, 6.6])));
