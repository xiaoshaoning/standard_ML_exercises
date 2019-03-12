(* Exercise 7.1.1: Write expressions to do the following.
* a) Define the type dino to be an abbriviation for a record structure with
* fields name (a string), weight ( a real), and height (a real).
* b) Creat a record named tyranno, of type dino, that represents the facts that
* Tyrannosaurus weighed 7 tons and was 20 feet tall.
* c) Create a record brachio, of type dino, that represents the facts that
* Brachiosaurus weighted 50 tons and was 40 feet tall.
* d) Write an expression that gets from the recrod tyranno the height of a
* Tyrannosaurus.
* e) Write an expression that gets from the record brachio the weight of a
* Brachiosaurus.
*)

type dino = {name:string, weight:int, height:int};

val tyranno = {name="tyranno", weight=7, height=20}:dino;

val brachio = {name="brachio", weight=50, height=40}:dino;

#height(tyranno);
#weight(brachio);

