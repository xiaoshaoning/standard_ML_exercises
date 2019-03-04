(* Given an integer i and a list L, cycle L i times. That is if ...*)

fun cycle(L, i:int) =
    if i = 0 then L
    else cycle(tl(L)@[hd(L)], i-1);

val result = cycle([1, 2, 3, 4, 5], 3);

fun print_list(L: int list) =
    print(Int.toString(hd(L)));
    print_list(tl(L));

print_list(result);
