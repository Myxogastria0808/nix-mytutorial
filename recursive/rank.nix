let
  f = x: if x == 1 then x else x * f (x - 1);
in f 5