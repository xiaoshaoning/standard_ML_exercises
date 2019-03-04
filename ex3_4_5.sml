fun power_2_i(x:real, 0) = x
| power_2_i(x:real, i:int) =
    let
        val temp = power_2_i(x, i-1)
    in
        temp * temp
    end;

power_2_i(2.0, 3);
