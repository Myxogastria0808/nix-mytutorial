let
  #属性セット引数
  attr1 = { a, b }: a + b;
  #デフォルト属性付き関数
  attr2 = { a, b ? 0 }: a + b;
  #追加属性を許可する
  attr3 = { a, b, ... }: a + b;
  #名前付き属性セット引数
  attr4 = { a, b, ... }@args: a + b + args.c;
  #以下のようなことも可能
  attr5 = x: x.a;
in {
  attr1 = (attr1 {a = 1; b = 2;});
  attr2 = (attr2 {a = 1;});
  #追加属性を許可した場合は、存在しない c を混ぜてもエラーにはならない
  attr3 = (attr3 {a = 1; b = 2; c= 3;});
  attr4 = (attr4 {a  =1; b = 2; c = 3;});
  #以下のように呼び出すことも可能
  attr5 = (attr5 { a = 1; });
}