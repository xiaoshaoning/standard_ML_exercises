(* Design a structure Stack that represents a stack of elements of some
* arbitrary type. Include the funtions: create (return an empty stack), push
* (add an element to the top of the stack and return the resulting stack), pop
* (delete the top element and return the resulting stack), isEmpty(test whether
* a given stack is empty), and top (return the top element). Also include an
* exception EmptyStack to catch attempts to read or pop the top element of an
* empty stack.
* *)


structure Stack = struct

exception EmptyStack;

fun create() = nil;

fun push(a, stackList:'a list) = a::stackList;

fun pop(nil) = raise EmptyStack
|   pop([x]) = nil
|   pop(x::xs) = xs;

fun isEmpty(nil) = true
|   isEmpty(stackList:'a list) = false;

fun top(nil) = raise EmptyStack
|   top(stackList: 'a list) = hd(stackList);

end;
