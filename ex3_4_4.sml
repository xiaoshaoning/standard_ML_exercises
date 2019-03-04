fun maxReal([x:real]) = x
| maxReal(x::xs) =
    let
        val maxXs = maxReal(xs)
    in
        if x > maxXs then x
        else maxXs
    end;

maxReal([3.14, 4.2, 5.1, 6.3, 1.0]);
