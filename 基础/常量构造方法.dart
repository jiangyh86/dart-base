class ConstPoint {
  final num x;
  final num y;

  // 使用const构造方法
  const ConstPoint(this.x, this.y);

  // 编译时常量对象，需要使用const来创建对象
  static final ConstPoint origin = const ConstPoint(10, 20);
}

void main(List<String> args) {
  ConstPoint point = ConstPoint(50, 30);
  print(point.x + point.y);

// 使用常量对象
  print(ConstPoint.origin.x);
}
