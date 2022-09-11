void main(List<String> args) {
  // 泛型
  List names = <String>[];
  names.add('wangRich');

  Map maps = Map<int, String>();
  maps[1] = "value";

  // 字面量写法
  List info = <String>['Java', 'JavaSpring', 'Flutter'];
  print(info);

  Map pages = <String, String>{'inde.html': 'HomePage', 'robots.txt': 'web'};
  print(pages);
}
