(* Exercise 7.2.2: Write programs to sort an array A of length n, using:
* a) A simple n^2 time sort such as bubblesort or insertion sort.
* b) Mergesort. Hint: Create temporary arrays and merge from two small arrays
* into one of twice the size.
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

fun merge(A: int array, B: int array) =
if length(A) = 0 then B
else if length(B) = 0 then A
else
    let
        val C = array(length(A)+length(B), 0);
        val AList = toList(A);
        val BList = toList(B);
        val ATailList = tl(AList);
        val BTailList = tl(BList);
        val ATailArray = fromList(ATailList);
        val BTailArray = fromList(BTailList)
    in
        if sub(A, 0) <= sub(B, 0) then fromList(sub(A, 0)::toList(merge(ATailArray, B)))
        else fromList(sub(B, 0)::toList(merge(A, BTailArray)))
    end;

fun splitList(nil) = ([], [])
| splitList([x]) = ([x], [])
| splitList(x::y::xs) =
    let
        val (temp1, temp2) = splitList(xs)
    in
        (x::temp1, y::temp2)
    end;

fun splitArray(A: int array) =
let
    val AList = toList(A);
    val (x, y) = splitList(AList)
in
    (fromList(x), fromList(y))
end;

fun mergesort(A:int array) =
if length(A) = 1 then A
else
    let
        val (B, C) = splitArray(A);
        val BSorted = mergesort(B);
        val CSorted = mergesort(C)
    in
        merge(BSorted, CSorted)
    end;

mergesort(A);
