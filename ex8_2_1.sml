(* Exercise 8.2.1: Define a structure Tree with a datatype tree representing
* general trees as in Section 6.4 and the following operations:
* 1. create(a) returns a one-node tree with label a.
* 2. build(a, L) returns a tree with a root labeled a and list of subtrees L for
* the root.
* 3. find(i, T) finds the ith subtree of the root of tree T and raises the
* exception Missing if there is no such subtree.*)

datatype tree = Node of string * tree list;

structure Tree = struct

exception Missing;

fun create(a:string) = Node(a, nil);

fun build(a:string, L: tree list) = Node(a, L);

fun find(i, T:tree) =
  case T of Node(a:string, nil)                   => raise Missing |
            Node(a:string, subTreeList:tree list) =>
                let
                    fun findList(j:int, nil) = raise Missing
                    |   findList(0, L:tree list) = hd(L)
                    |   findList(j:int, L:tree list) = findList(j-1, tl(L))
                in
                    findList(i, subTreeList)
                end;

end;
