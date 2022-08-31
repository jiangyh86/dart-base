class Person {
  String? name;
  int? age;
  Person({this.name, this.age});
  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void printInfo() {
    print('name=$name ,age=$age');
  }
}

// ..级联运算符——对一个对象进行自身方法的多次方法调用
void main(List<String> args) {
    new Person()
    ..setName('wang')
    ..setAge(12)
    ..printInfo();
}
