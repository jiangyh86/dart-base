
class Person{
  String? name;
  int? age;
  Person(name,age);
}
void main(List<String> args) {
  var p = Person('name', 12);
  print(p is Person);
  (p as Person).name='alice';
  print(p.name);

}