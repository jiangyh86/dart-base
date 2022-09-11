class Point {
  int x;
  int y;
  Point(this.x, this.y);

  // 使用operator关键字，对运算符进行重载
  Point operator +(Point p) {
    return Point(p.x + this.x, p.y + this.y);
  }

  Point operator -(Point p) {
    return Point(this.x - p.x, this.y - p.y);
  }
}

void main(List<String> args) {
  Point p1 = Point(10, 20);
  Point p2 = Point(20, 40);

  // 使用重载后的运算符

  var p3 = p1 + p2;
  var p4 = p3 - p2 - p1;

  print('${p3.x},${p3.y}');
  print('${p4.x},${p4.y}');
}
