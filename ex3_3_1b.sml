(*The function that cycles a list one position. If the list is empty, return the 
* empty list *)

fun cycle(nil, n:int) = nil
| cycle(L: 'a list, 0) = L
| cycle(L: 'a list, 1) = tl(L)@[hd(L)]
| cycle(L: 'a list, n) = tl(cycle(L, n-1))@[hd(cycle(L, n-1))];

cycle([1, 2, 3, 4, 5, 6], 4);
