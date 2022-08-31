void main() {
  //1.静态的
  String name = '张三';
  num age = 18;
//2.
  var address = '羊山北路';
  var id = 101;
  // print(name);
  // print(age);
  // print(id);
  // print(address);

//3.
// var num=19;
// num='2020';

// 4.使用dynamic 声明变量
dynamic var1='hello';
var1=10;
print(var1);
  
  // 5. 使用Object声明变量
  Object var2=20.2;
  var2=10;
  print(var2);
}
