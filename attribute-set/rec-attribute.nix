#Recursive attribute set
#再帰的に扱うことが可能
rec {
  one = 1;
  two = 2;
  #recでなければエラーになる
  three = two + one;
}