// dart中顶一个类与Java中类似，但是Dart中没有private，public这些成员修饰符
// 如果有私有成员，不希望外面访问，只需要在成员变量前加上下划线"_"即刻便为私有。
// 注意在Dart中工造方法不可以重载
class Person {
  String? name;
  int? _age;

  // 普通的构造方法
  // Person(String name, int _age) {
  //   this.name = name;
  //   this._age = _age;
  // }

  // 在工造方法中初始话成员变量时可以如下简写：
  Person(this.name, this._age);
  // Person({this.name, this._age});

  // 如果处理其他变量时可以单独操作
  // Person(this.name, this._age, this.address) {
  //   print(address)
  // }
}

void main(List<String> args) {
  Person p = Person('wang', 12);
  print(p.name);
  print(p._age);
}
