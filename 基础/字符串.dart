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