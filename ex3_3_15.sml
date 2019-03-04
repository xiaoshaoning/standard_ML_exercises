(* Write a function to tell whether a list is empty. That is
* return true if and only if the argument is an empty list. *)

fun isEmpty(nil) = true
| isEmpty(x : 'a list) = false;

isEmpty([]);
isEmpty([1]);
