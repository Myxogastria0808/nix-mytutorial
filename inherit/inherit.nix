#ネストされたスコープで同一の名前を
#割り当てるための省略形
let
  x = 1;
  y = 2;
in {
  #スコープ内部
  inherit x y;
  #以下と同等
  #x = x; y = y;
}
#結果 { x = 1; y = 2; }