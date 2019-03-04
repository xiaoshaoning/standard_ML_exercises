fun length(nil) : int = 0
| length(x::xs) = 1 + length(xs);

length([1, 2, 3, 4]);
