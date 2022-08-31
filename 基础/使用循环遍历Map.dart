void main(List<String> args) {
  Map myMap = {'zhangsan': '202201','Lisi':'202202','wangwu' : '202203'};

  //forEach遍历Map
  myMap.forEach((key, value) => print("$key: $value"));

  //根据键获取值来遍历，通过keys返回map所有建的集合
  for (var k in myMap.keys) {
    print("$k : ${myMap[k]}");
  }
}