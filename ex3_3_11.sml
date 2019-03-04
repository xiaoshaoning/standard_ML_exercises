fun member(x, nil) = false
| member(x, y::ys) = if x = y then true
               else member(x, ys);

member(1, [2, 3, 4]);

fun delete(x, nil) = nil
| delete(x, y::ys) = if x = y then ys
                     else [y]@delete(x, ys);

delete(2, [3, 2, 4]);

fun insert(x, nil) = [x]
| insert(x, S as y::ys) = if x = y then S
                          else [y]@insert(x, ys);

insert(2, [3, 2, 4]);
insert(2, [1, 4, 6]);
