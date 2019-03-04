fun flip(nil) = nil
| flip((x:int, y:int)::zs) = if x < y then [(x, y)]@flip(zs)
                     else [(y, x)]@flip(zs);

flip([(1, 3), (3, 1), (4, 2)]);
