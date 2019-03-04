fun print_star(n:int) =
    let
        fun star(k:int) =
            if k > 0 then (print("*") ; star(k-1))
            else ()
    in
        if n > 0 then (star(n); print("\n"); print_star(n-1))
        else ()
    end;

print_star(10);
