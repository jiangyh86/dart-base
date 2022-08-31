void main(){
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

}