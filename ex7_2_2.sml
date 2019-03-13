(* Exercise 7.2.2: Write programs to sort an array A of length n, using:
* a) A simple n^2 time sort such as bubblesort or insertion sort.
* b) Mergesort.
*)

open Array;

exception OutOfIndices;

fun bubbleSwap(A:int array, i) = if i > length(A)-2 then A
else if sub(A, i) < sub(A, i+1) then bubbleSwap(A, i+1)
else
    let
        val temp1 = sub(A, i);
        val temp2 = sub(A, i+1);
    in
        (
        update(A, i, temp2);
        update(A, i+1, temp1);
        bubbleSwap(A, i+1)
        )
    end;


val A = array(10, 0);
update(A, 0, 4);
update(A, 1, 7);
update(A, 2, 3);
update(A, 3, 2);
update(A, 4, 5);
update(A, 5, 1);
update(A, 6, 6);
update(A, 7, 9);
update(A, 9, 8);
A;

fun bubbleSort(A:int array) =
if length(A) = 1 then toList(A)
else
    let
        val C = bubbleSwap(A, 0);
        val CList = toList(C);
        val CListRev = rev(CList);
        val myhead = rev(tl(CListRev));
        val myTail = hd(CListRev);
        val CTailArray = fromList(myhead)
    in
        bubbleSort(CTailArray)@[myTail]
    end;

bubbleSort(A);
