import 'dart:math';

class Point {
  final num x;
  final num y;
  final num distance;

  Point(x, y)
      : x = x,
        y = y,
        distance = sqrt(x * x + y * y) {
    print('这是构造方法！');
  }
}

void main(List<String> args) {
  Point p = Point(3, 4);
  print(p.distance);
}
