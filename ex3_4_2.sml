(* exercise 3.4.2 Rewrite Fig. 3.22 so line(4) does not use a pattern in the
  val-declaration.
  That is, replace line (4) by val x = split(cs), and obtain the components of
  pair x as needed.*)

fun split(nil) = (nil, nil)
| split([a]) = ([a], nil)
| split(a::b::cs) =
    let
        val x = split(cs);
        val (M, N) = x
    in
        (a::M, b::N)
    end;

split([1, 2, 3, 4, 5]);
