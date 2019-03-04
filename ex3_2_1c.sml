(* duplicate each element of a list.*)

fun duplicate(nil) = nil
| duplicate(x::xs) = [x]@duplicate(xs);

val a = duplicate([1, 2, 3]);
