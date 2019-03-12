(* Write the following functions based on the dino record type of Exercise
* 7.1.1.
* a) Given a list of dino records, find the tallest dinosaur on the list.
* b) Find the heaviest dinosaur on a list of dino records.
* c) Find the average weight of dinosaurs on a list of dino records.
*)

type dino = {name:string, weight:int, height:int};

val tyranno = {name="tyranno", weight=7, height=20}:dino;

val brachio = {name="brachio", weight=50, height=40}:dino;

val gutanno = {name="gutanno", weight=30, height=30}:dino;

val chinosisno = {name="chinosisno", weight=40, height=70}:dino;

val dinoList = [tyranno, brachio, gutanno, chinosisno];

fun tallestDino(nil) = ""
|   tallestDino(x::xs : dino list) =
    let
        fun tallestDinoHeight(nil) = 0 |
            tallestDinoHeight(x::xs : dino list) = if #height(x) >= tallestDinoHeight(xs) then #height(x)
                                                       else tallestDinoHeight(xs)
    in
        if #height(x) >= tallestDinoHeight(xs) then #name(x)
        else tallestDino(xs)
    end;

val highestDino = tallestDino(dinoList);

fun heaviestDino(nil) = ""
|   heaviestDino(x::xs : dino list) =
    let
        fun heaviestDinoWeight(nil) = 0 |
            heaviestDinoWeight(x::xs : dino list) = if #weight(x) >= heaviestDinoWeight(xs) then #weight(x)
                                                       else heaviestDinoWeight(xs)
    in
        if #weight(x) >= heaviestDinoWeight(xs) then #name(x)
        else heaviestDino(xs)
    end;

val heaviestDino = heaviestDino(dinoList);

fun averageWeight(nil) = 0.0
|   averageWeight(dinolist : dino list) =
    let
        fun sumWeight(nil) = 0.0
        |  sumWeight(x::xs : dino list) = real(#weight(x)) + sumWeight(xs)
    in
        sumWeight(dinolist) / real(length(dinolist))
    end;

averageWeight(dinoList);
