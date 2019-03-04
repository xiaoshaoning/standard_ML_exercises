(* Exercise 3.3.3: Write a function that flips alternate elements of a list.
* That is, given a list [a_1, a_2, ..., a_n] as argument, produce [a_2, a_1,
* a_4, a_3, a_6, a_5, ...]. If n is odd, a_n remains at the end. *)

fun flipAlternateElements(nil) = nil
| flipAlternateElements([x]) = [x]
| flipAlternateElements(x::y::ys) = [y]@[x]@flipAlternateElements(ys);

flipAlternateElements([1, 2, 3, 4, 5, 6, 7]);
