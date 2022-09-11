import 'dart:io';
void main(List<String> args) async {
  //创建文件
  File file = File( 'test.txt');
  String content=
  ' The easiest way to write text to a file is to create a File' ;

  try {
  // 向文件写入字符串
  await file.writeAsString( content);
  print( 'Data written.' );
  } catch (e) {
  print(e);
  }
}
