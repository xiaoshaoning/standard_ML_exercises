(* Exercise 7.3.1: Write expressions that do the following:
* a) Create a ref-variable i whose initial value is a reference to 10.
* b) Create a ref-variable word whose initial value refers to "foo".
* c) Change existing ref-variable i to refer to 20.
* d) Change existing ref-variable word to refer to "bar". *)

val i = ref 10;

val word = ref "foo";

i := 20;
word := "bar";

!i;
!word;
