import 'dart:io';

Future<void> main(List<String> args) async {
  File file = File('test.txt');
  var content = await file.readAsString();
  print(content);
}
