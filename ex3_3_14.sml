(* Write a function that, given list of reals [a_1, a_2, ..., a_n], computes
* Prod_(i<j) (a_i - a_j). That is, we compute the product of all differences
* between elements, with the element appear later on the list subtracted from
* the element appearing first. If there are no pairs, the "product" is 1.0.  *)

fun productOfDifference(nil):real = 1.0
| productOfDifference([a:real]) = 1.0
| productOfDifference([a:real, b:real]) = a-b
| productOfDifference(a::b::cs : real list) = (a-b) * productOfDifference([a]@cs) * productOfDifference([b]@cs) * productOfDifference(cs);

productOfDifference([1.0, 2.0, 3.0]);
