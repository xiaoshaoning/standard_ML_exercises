fun sort3(a, b, c ):int list =
    if a > b then
        if b > c then [a, b, c]
        else if a > c then [a, c, b]
             else [c, a, b]
    else if a > c then [b, a, c]
         else if b > c then [b, c, a]
              else [c, b, a];

val sortedList : int list = sort3(2, 3, 1);
