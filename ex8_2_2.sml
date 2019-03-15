(** Exercise 8.2.2: Note that in Exercise 8.2.1 create(a) means the same as
* build(a, nil). We may thus wish to define a new structure SimpleTree that has
* all the elements of structure Tree except create. Also, way may choose to
* restrict simple trees to have integer labels. Write a signature SIMPLE that
* makes these restrictions. Then use SIMPLE and Tree to define structure
* SimpleTree.
*)

datatype ('label) tree = Node of 'label * 'label tree list;

structure Tree = struct

exception Missing;

fun create(a) = Node(a, nil);

fun build(a, L: 'label tree list) = Node(a, L);

fun find(i, T:('label) tree) =
  case T of Node(a, nil)                   => raise Missing |
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
