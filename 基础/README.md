# dart-基础知识

注释区别：

```dart
/**
 * 文档注释
 */

///Dart独有的文档注释
void main(){
  print('hello world !');
}
```

其余与Java并无太大差别

#### 内置的数据类型：

- 数值型num
  - int
  - double-64位双精度
- 字符串String
- 布尔bool
- 列表List
- 映射Map
- Runes

#### 定义变量和常量

##### 定义变量

- 显示指定变量类型：静态类型语言的常用方式

```dart
  //1.静态的
  String name = '张三';
  num age = 18;
```

- 由VM自动推断:动态语言的常用方式

```dart
//2.
  var address = '羊山北路';
  var id = 101;
```

![image-20220831190710399](https://jyhload.oss-cn-shanghai.aliyuncs.com/img/image-20220831190710399.png)

==指定num的数值类型后，无法直接改变num为string类型==

解决：使用dynamic和 使用Object,但是不建议使用

```dart
	// 4.使用dynamic 声明变量
	dynamic var1='hello';
	var1=10;
	print(var1); 
 	 // 5. 使用Object声明变量
 	 Object var2=20.2;
 	 var2=10;
  	print(var2);
```

##### 定义常量

const和final的区别

**const:编译时常量，只能赋值一次；**

**final:运行时常量**例如获取当前时间：DateTime.now()，应该用final来修饰

![image-20220831191503646](https://jyhload.oss-cn-shanghai.aliyuncs.com/img/image-20220831191503646.png)

```dart
  // 1.final 定义常量
  final height=10.9;
  print(height);

  // 2. 使用const定义常量
  const PI=3.14;
  print(PI);

  // 3.两者区别
  final time1=DateTime.now();//正确
  print(time1);

  // const time2=DateTime.now();
```

#### 内置类型常用操作

```dart
  //String 转int
  int one=int.parse('123');
  print(one);

  //string 转 double
  double two = double.parse('3.1415926');
  print(two);

  //int转sstring
  String oneStr =123.toString();
  print(oneStr);

  //double 转string 保留2位
  String twoStr =3.1415926.toStringAsFixed(2);
  print(twoStr);
```

##### 字符串操作

```dart
void main(){
  //1.Dart 可以使用单引号或者双引号创建字符串
  var s1= "hello";

  //2. 类似Python,Dart 可以使用三引号来创建包含多行的字符串
  var multiline1 = """你可以像这样,创建一个
  包含了多行的字符串内容
  """;
  //可以使用三单引号来创建包含多行的字符串
    var multiline2 = '''你可以像这样,创建一个
  包含了多行的字符串内容
  ''';
  print(multiline1);
  print(multiline2);
  // 3.类似Python,还可以在字符串前面加上 'r'来创建原始字符串，则该字符串中的特殊字符可以不用转义
  var path= r'D:\workspace\code';
  print(path);//D:\workspace\code

  // 4. Dart支持使用‘+’操作符拼接字符串
  var greet= "hello"+"world";

  // 5. Dart提供了插值表达式 "${}",也可以用于拼接字符串
  var name ="王五";
  var sStr="hello,${name}";
  print(sStr);//hello,王五

  //拼接的是一个表达式时，不能省略花括号
  var str1= 'link';
  var str2= "click ${str1.toUpperCase()}";
  print(str2);

  //和java不同的时候，Dart使用‘==’来比较字符串的内容
  print('object'=='object');
}
```

##### 布尔类型

```dart
void main(){
  bool? flag ;
  print(flag);//null
  bool flag1=true;
  print(flag1);//true
}
```

##### 列表

```dart
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
```

##### 键值对

```dart
void main() {
  var gifts = {
    'first': 'Java',
    'second': 'Dart',
  };
  print(gifts);//{first: Java, second: Dart}
  print(gifts.keys);

  print(gifts['first']);//Java
  print(gifts['hhh']);//null
}
```

#### 方法函数

```dart
//定义函数void
String greet(String name){
  return ('hello,$name');
}

 greet1(String name){
   print('hello,$name');
  //函数默认返回值是null
}

 void greet2(String name){
   print('hello,$name');

}

void main(){
 print(greet('巡航'));
 print(greet1('巡航'));//null
}
```

##### 命名可选参数和位置可选参数

```dart
//命名可选参数； 
enableFlags({bool? bold,bool? hidden}){
    print(bold);
    print(hidden);
 }
//位置可选参数：
void add({int x=20,int y=1,int z=2}){
  print(x+y+z);
}
//位置可选参数：
void add1(int x,[int y=5,int z=2]){
  print(x+y+z);
}
void main(){
  /**
  null
  true */
  //命名可选参数；参数和顺序无关
enableFlags(hidden: true);
//位置可选参数：必须按顺序传值
add(x: 2);
add1(5,10);
add1(5, 10);
}
```

##### 匿名函数和箭头函数

```dart

var fun =(x,y){
  return x+y;
};

add(num a,num b) => a+b;
// 匿名箭头函数
var fun1=(String s1,String s2) => s1+s2;
void main(List<String> args) {
  print(fun(1,4));
  print(add(5, 4));
  print(fun1('ccc','aaa'));
}
```

#### 运算符

##### 算数运算符：

 + -*/,

==~/:相除后的结果取整返回。==向下取整

##### 类型判断运算符

```dart

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
```

##### 条件运算符

```dart
void main(List<String> args) {
  var str1 = 'Hello';
  var str2 = 'Word';
  

  // expre1 ?? expre2 非空条件判断符 expre1非空返回expre1否则返回expre2
  var result = str1 ?? str2.toUpperCase();
  var result2 = null ?? str2.toUpperCase();
  print(result);//Hello
  print(result2);//WORD
}
```

##### 级联运算符

```dart
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
```

##### 条件成员访问符

```dart
void main() { 
// list1 默认值为null
// List list1;
// print(list1?. Length); // null 
List? list2;
print(list2?.length);
}
```

##### 循环遍历

```dart

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
void main(List<String> args) {
  Map myMap = {'zhangsan': '202201','Lisi':'202202','wangwu' : '202203'};

  //forEach遍历Map
  myMap.forEach((key, value) => print("$key: $value"));

  //根据键获取值来遍历，通过keys返回map所有建的集合
  for (var k in myMap.keys) {
    print("$k : ${myMap[k]}");
  }
}
```



