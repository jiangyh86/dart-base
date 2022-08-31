class Point {
  num x;
  num y;
  // 同名的构造方法
  Point(this.x, this.y);

// 命名的构造方法重定向到同名构造方法，中间使用一个冒号
  Point.alongXAxis(num x) : this(x, 0);
}

void main(List<String> args) {
  Point p = Point(10, 20);
  print('p.x:${p.x}, p.y:${p.y}');

  Point p2 = Point.alongXAxis(10);
  print('p2.x:${p2.x}, p2.y:${p2.y}');
}
