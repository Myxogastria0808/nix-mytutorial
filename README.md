# Nix言語のチュートリアル

nixファイルの実行

```sh
nix-instantiate --eval　--strict ~.nix
```
REPL環境に入る

```sh
nix repl
```
## builtins

組み込み関数が用意されている

## pkgs.lib

nixpkgsと呼ばれる属性セット

多数の機能が提供されている

## 純粋関数

- 引数が同じ場合、綱に同じ返り値となる。(参照透過性)

- 副作用が発生しない

## カリー化

ある関数が一つの引数のみを受け付け、その結果を更に別の関数に一つの引数として渡すようにすること。

例 (Nix言語)

Nix言語は、引数を一つしか取れない

```nix
let
  #カリー化せずに書いた場合
  b = x: (y: x + y); 
  #カリー化した関数
  f = x: y: x + y;
in f 1 2
```

例 (typescript)

```typescript
//通常の関数
const add = (x: number, y: number): number => x + y;
add(1, 2) // 3

//カリー化した関数
const curriedAdd = (x: number) => (y: number) => x + y;
curriedAdd(1)(2) // 3
```

## 参考サイト

https://ryantm.github.io/nixpkgs/functions/library/lists/

https://qiita.com/rokumura7/items/033a930354b2733e097a

https://nix.dev/tutorials/nix-language

https://qiita.com/oedkty/items/f5fb807390a87359da0f
