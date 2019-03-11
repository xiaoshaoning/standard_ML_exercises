(* Exercise 6.2.3: Write a function that takes a btree as its argument and
* returns a pair consisting of the left and right subtree. Define an exception
* for the erroneous where the tree is empty. *)

exception emptyTree;

datatype 'a btree =
Empty |
node of 'a * 'a btree * 'a btree;

fun subTrees(binaryTree:'a btree) =
case binaryTree of node(a, b, c) => (b, c) |
                   Empty => raise emptyTree;

val myTree = node(1, node(2, Empty, Empty), node(3, Empty, Empty));

subTrees(myTree);
