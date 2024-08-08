# F(0) = 1
# F(1) = 1
# F(n) = F(n-1) + F(n-2)

let
  f = x: if x == 0 || x == 1 then 1 else f (x - 1) + f (x - 2);
in f 1000
