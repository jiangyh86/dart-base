class Person {
  String? name;
  int? age;
  Person(this.name, this.age);

// 命名构造方法
  Person.fromData(Map data) {
    this.name = data['name'];
    this.age = data['age'];
  }
}

void main(List<String> args) {
  Person p = Person.fromData({"name": "jiangyh", "age": 12});
  print(p.name);
  
  Person p2 = Person("jyh", 12);
  print(p2.name);
}