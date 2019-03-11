(* Exercise 6.2.2: Define a type (not a datatype) mapTree that is a
* specialization of the btree datatype to have a label type that is a set of
* domain=rage pairs. Then, define a tree t1 that has a single node with
* the pair ("a", 1) at the root. *)

datatype 'a btree =
Empty |
node of 'a * 'a btree * 'a btree;

type mapTree = (string*int) btree;

val t1 = node(("a", 1), Empty, Empty) : mapTree;
