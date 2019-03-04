(* round a real number to the nearest tenth *)

fun round10(x : real) : real =
    let
        val tenTimesValue = round(10.0 * x);
    in
        real(tenTimesValue) / 10.0
    end;

round10(12.68);
