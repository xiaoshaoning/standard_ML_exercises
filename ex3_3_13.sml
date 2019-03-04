(* Exercise 3.3.13: Suppose sets are represented by lists as in Exercise 3.3.12.
* The power set of a set S is the set of all subsets of S. A set of sets can be
* represented in ML by a list whose elements are lists. For example, if S is the
* set {1, 2}, then the power set of S is {empty, {1}, {2}, {1, 2}}. This power
* set can be represented in ML by the list of lists [nil, [1], [2], [1, 2]].
* That is, the elements of the lists are themselves lists, each representing one
* of the subsets of S . Write a function that takes a list as argument, representing
* some set S, and produces the power set of S. *)

fun addElement(nil, a) : 'a list list = [[a]]
| addElement(x::xs, a) = [[a]@x]@addElement(xs, a);

fun oneElementSet(nil) = nil
| oneElementSet(x::xs) = [[x]]@oneElementSet(xs);

fun powerSet(nil) = nil
| powerSet([x]) = [[x]]
| powerSet(x::xs) = addElement(powerSet(xs), x)@powerSet(xs);

powerSet([1, 2, 3]);
