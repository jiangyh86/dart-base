void main() {
  //创建列表
  List list = [1, 2, 3];
  //下标取值
  print(list[0]);
  print(list.length);

  //可以add添加元素

  //在list字面量前加const关键字，定义一个不可变的列表(编译时常量)
  var constantList = const [1, 2, 3];
  constantList[1] = 1; //报错
}
