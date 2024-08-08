let
  f = x: if x == 0 then x else f (x - 1);
in f 10
