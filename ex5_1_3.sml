(* Exercise 5.1.3: A year is a leap year if and only if it is divisible by 4,
* but not by 100, unless it is also divisible by 400. Write a case expression
* that tells whether year y is a leap year.*)

(* fun leapYear(n : int):bool =
    let
        val mod4 = n - (n div 4) * 4;
        val mod100 = n - ( n div 100) * 100;
        val mod400 = n - ( n div 400) * 400
    in
        if mod400 = 0 then true
        else if mod100 = 0 then false
        else if mod4 = 0 then true
        else false
    end;
    *)

fun leapYear(n:int):bool =
case n - (n div 4) * 4 of
    1 => false |
    2 => false |
    3 => false |
    0 => if n = (n div 400)*400 then true
         else if n = (n div 100) * 100 then false
         else true

;

print(Bool.toString(leapYear(1996))^"\n");

