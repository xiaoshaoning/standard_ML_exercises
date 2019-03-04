fun maxValue([x]): real = x
| maxValue(x::xs) = if x > maxValue(tl(xs)) then x else maxValue(tl(xs));

maxValue([2.71828, 1.0, 3.14]);
maxValue([3.0])
