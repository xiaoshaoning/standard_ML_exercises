(* The simple rule for translating into "Pig Latin" is to take a word that
* begins with a vowel and add "yay", while taking any word that begins with one
* or more consonants and transferring them to the back before appending "ay".
* For example, "able" becomes "ableyay" and "stripe" becomres "ipestray". Write
* a function that converts a string of letters into its Pig-Latin translation.*)

fun pigLatin(myString : string) =
    let
        fun vowelDetect(nil) = false
        | vowelDetect(x::_) = if x = #"a" orelse x = #"e" orelse x = #"i" orelse x = #"o" orelse  x = #"u" then true
                       else false;

        fun transferConsonants(myString : string) = if vowelDetect(explode(myString)) then myString
                                            else transferConsonants(implode(tl(explode(myString))))^substring(myString, 0, 1)
    in
        if vowelDetect(explode(myString)) then myString^"yay"
        else transferConsonants(myString)^"ay"
    end;

print(pigLatin("able"));
print("\n");
print(pigLatin("stripe"));
