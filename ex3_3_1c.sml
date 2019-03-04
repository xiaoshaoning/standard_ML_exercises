(* The function from exercise 3.2.1 c that duplicates each elements of a list.*)

fun duplicate(nil) = nil
| duplicate([x]) = [x]
| duplicate(L : 'a list) = [hd(L)]@tl(L);

duplicate([1, 2, 3, 4, 5]);
