import 'dart:io';

doTask() async {
  sleep(Duration(seconds: 3));
  print('finish');
  return 'OK';
}

test() async {
  var res = await doTask();
  print(res);
}

void main(List<String> args) {
  print('main start');
  test();
  print('end');
  // var result = doTask();
  // print(result);
}
