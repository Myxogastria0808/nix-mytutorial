#Attribute set
#関数のない attribute set は、JSONの対応するデータ型と小野路ように機能する。
{
  string = "hello";
  integer = 1;
  float = 3.141;
  bool = true;
  null = null;
  #listはスペース区切り
  list = [ 1 "two" false ];
  attribute-set = {
    a = "hello";
    b = 2;
    c = 2.718;
    d = false;
  };
}
#対応するJSON
# {
#   "string": "hello",
#   "integer": 1,
#   "float": 3.141,
#   "bool": true,
#   "null": null,
#   "list": [1, "two", false],
#   "object": {
#     "a": "hello",
#     "b": 1,
#     "c": 2.718,
#     "d": false
#   }
# }
