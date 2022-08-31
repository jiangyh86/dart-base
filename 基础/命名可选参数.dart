 enableFlags({bool? bold,bool? hidden}){
    print(bold);
    print(hidden);
 }

void add({int x=20,int y=1,int z=2}){
  print(x+y+z);
}

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