class Person {
  void greet() {
    print('Hello');
  }
}

class Student implements Person {
  @override
  void greet() {
    print('Hi,I`m LiLei.');
  }
}

test(Person p) {
  p.greet();
}

void main(List<String> args) {
  var s = Student();
  test(s);
}
