
void main(List<String> args) {
  List myList = ['Java', 'JavaSpring', 'Flutter'];

  // for...in...循环类似java中的增强forxunhuan
  for (var element in myList) {
    print(element);
  }

  // forEach循环，其参数为一个function对象，这里传入一个匿名函数
  myList.forEach((element) {
    print(element);
  });

  // 可以使用匿名函数简写
  myList.forEach((e) => print(e));
}
