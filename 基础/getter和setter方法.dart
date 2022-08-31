class Person {
  String username;
  Person(this.username);

  // 方法名前加 get关键字
  String get name {
    return "user:" + this.username;
  }

  // 方法名前加 set关键字
  void set name(String name) {
    this.username = name;
  }
}

void main(List<String> args) {
  Person p = Person("wangRich");
  print(p.name);//等于调用get方法
  p.name = 'wangFuGui';
  print(p.name);
}
