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