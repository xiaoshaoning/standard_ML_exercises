fun power(x:real, i:int) =
    if i = 0 then 1.0
    else power(x, i-1) * x;

power(3.1, 3);
