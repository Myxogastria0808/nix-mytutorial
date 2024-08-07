#File system path
#絶対パス
# / から始まる
#相対パス
# ./ 現在のディレクトリ
# ../ 親ディレクトリ

#Lookup path
#builtins.nixPath の値に依存するパス
#ex) <nixpkgs>
#-> /nix/var/nix/profiles/per-user/root/channels/nixpkgs

let
  #文字列補間でファイルシステムパスが使用されるたびに
  #Nix Storeにファイルパスにコピーされる
  a = "${./datafile}";
  #ディレクトリの場合は、ディレクトリ全体がNix Storeにコピーされる
  b = "${./.}";
in {
  inherit a b;
}