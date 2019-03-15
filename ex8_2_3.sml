(** Exercise 8.2.3: Use your structure SimpleTree from Exercise 8.2.2 to
* construct a tree with a root labeled 1 and three children labeled 2, 3, and 4.
* Apply function find to obtain the second subtree of the root of your tree.
*)

datatype ('label) tree = Node of 'label * 'label tree list;

structure Tree = struct

exception Missing;

fun create(a) = Node(a, nil);

fun build(a, L: 'label tree list) = Node(a, L);

fun find(i, T:('label) tree) =
  case T of Node(a, nil) => raise Missing |
            Node(a, subTreeList: 'label tree list) =>
                let
                    fun findList(j:int, nil) = raise Missing
                    |   findList(0, L:'label tree list) = hd(L)
                    |   findList(j:int, L:'label tree list) = findList(j-1, tl(L))
                in
                    findList(i, subTreeList)
                end;
end;

signature SIMPLE =
sig
    exception Missing
    val build : int * int tree list -> int tree
    val find : int * int tree -> int tree
end

structure SimpleTree:SIMPLE = Tree;

open SimpleTree;

val tree2 = build(2, nil);
val tree3 = build(3, nil);
val tree4 = build(4, nil);
val myTree = build(1, [tree2, tree2, tree3]);
val secondSubtree = find(2, myTree);
