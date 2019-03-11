(* Exercise 6.2.1: Give an example of a value of type 'a btree, where btree is
* the datatype defined in Example 6.5. Your tree should have 3 nodes.*)

datatype 'a btree =
Empty |
node of 'a * 'a btree * 'a btree;

node(1, node(2, Empty, Empty), node(3, Empty, Empty));
