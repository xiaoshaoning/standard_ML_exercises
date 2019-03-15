(**
*  Exercise 8.2.5: Design a suitable signature that will allow us to create from
*  Stack of Exercise 8.2.4 a structure StringStack whose stacks have elements
*  that are strings and that omits the operation top.
*
*)

structure Stack = struct

exception EmptyStack;

fun create() = nil;

fun push(a, stackList:'a list) = a::stackList;

fun pop(nil) = raise EmptyStack
|   pop([x]) = nil
|   pop(x::xs) = xs;

fun top(nil) = raise EmptyStack
|   top(stackList: 'a list) = hd(stackList);

fun isEmpty(nil) = true
|   isEmpty(stackList:'a list) = false;

end;

signature StringStackSig =
sig
    exception EmptyStack
    val create : unit -> string list
    val push : string * string list -> string list
    val pop : string list -> string list
    val isEmpty : string list -> bool
end

structure StringStack:StringStackSig = Stack;

open StringStack;

val myStack = create();
val myStack = push("I", myStack);
val myStack = push("like", myStack);
val myStack = push("SML", myStack);
val myStack = pop(myStack);

