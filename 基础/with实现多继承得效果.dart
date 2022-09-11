class Father1 {
  f() {
    print('father1 class ');
  }

  a() {
    print('a function ');
  }
}

class Father2 {
  f() {
    print('father2 class ');
  }

  b() {
    print('b function ');
  }
}

class Father3 {
  f() {
    print('father3 class ');
  }

  c() {
    print('c function ');
  }
}

class Son extends Father1 with Father2, Father3 {}

void main(List<String> args) {
  var son = Son();
  son.a();
  son.b();
  son.c();
  son.f();
}
