
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
  print(5~/2);
}