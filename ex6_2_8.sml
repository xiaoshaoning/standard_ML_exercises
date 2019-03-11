(* Exercise 6.2.8: In propositional logic, statements are represented by
* propositional variables, which we may think of as identifiers. Logic
* expressions can be built from propositional variables by applying a number of
* logical operators. In our exercise, we shall define logical expressions
* and their truth values in a simple but useful form as follows.
* Basis: A propositional variable is a logical expression. Its truth
* value may be assigned to be either true or false.
* Induction: If E_1 and E_2 are logical expression, then
  * 1. AND(E_1, E_2) is a logical expression, and its value is true iff
  * both E_1 and E_2 have the value true.
  * 2. OR(E_1, E_2) is a logical expression, and its value is true if
  * either E_1 or E_2 or both have the value true.
  * 3. NOT(E_1) is a logical expression whose value is true iff the value
  * of E_1 is false.
An example of a propositional expression is AND(OR(p, q), NOT(p)). Do the
following:

a) Devise a datatype whose values represent logical expressions as described
above. You may assume that propositinal variables are represented by strings.

b) Write a function eval(E, L) that takes a logical expression E and a list of
     true propositional variables L, and determines the truth value of E on the
     assumption that the propositional variables on L are true and all other
     propositional variables are false. *)

datatype binaryLogicOp = AND | OR;
datatype unaryLogicOp = NOT;

datatype logicalExp =
stringnode of string |
bnode of binaryLogicOp * logicalExp * logicalExp |
unode of unaryLogicOp * logicalExp;

type propositionalVariables = string list;

fun getVariableValue(myVariable:string, nil) = false
| getVariableValue(myVariable:string, x::xs : propositionalVariables) =
    if myVariable = x then true
    else getVariableValue(myVariable, xs);

fun eval(logical_expression:logicalExp, L : propositionalVariables):bool =
  case logical_expression of stringnode(myString) => getVariableValue(myString, L)      |
                             bnode(AND, e_1, e_2) => eval(e_1, L) andalso eval(e_2, L)  |
                             bnode(OR, e_1, e_2)  => eval(e_1, L) orelse eval(e_2, L)   |
                             unode(NOT, e)        => not(eval(e, L));

eval(unode(NOT, stringnode("a")), ["a", "b"]);
eval(bnode(AND, stringnode("a"), stringnode("b")), ["a", "c", "b"]);
