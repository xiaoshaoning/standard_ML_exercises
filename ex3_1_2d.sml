(* Given a list, return that list with its second element deleted. Your function
* need not behave well on lists of length sorter than 2. *)

fun removeSecondElement(L : 'a list) : 'a list  =
    let
        val L_prime = tl(tl(L))
    in
        hd(L)::L_prime
    end;

removeSecondElement([1, 2, 3]);
