(* Write a function that takes a list of characters and returns true if the
* first element is a vowel and false if not. Use the wildcard symbol _ whenever
* possible in the patterns *)
fun vowelDetect(nil) = false
| vowelDetect(x::_) = if x = #"a" orelse x = #"e" orelse x = #"i" orelse x = #"o" orelse  x = #"u" then true
                       else false;

vowelDetect([#"u", #"d"]);


