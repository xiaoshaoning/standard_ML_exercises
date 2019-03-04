fun addElement(nil, a) : 'a list list = [[a]]
| addElement(x::xs, a) = [[a]@x]@addElement(xs, a);

val L = [[2, 3], [4, 5, 6]];

addElement(L, 1);
