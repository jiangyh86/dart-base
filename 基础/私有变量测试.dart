import '类的定义.dart';

void main(List<String> args) {
  Person person = Person("Wang", 18);
  print(person.name);
  // print(person._age);//报错
}
