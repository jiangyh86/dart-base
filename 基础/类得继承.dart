
class Father {
  myFunction() {
    print('father class');
  }
}

class Son extends Father {
  @override
  myFunction() {
    super.myFunction();
    print('son class');
  }
}

void main(List<String> args) {
  var f = Father();
  var s = Son();
  f.myFunction();
  s.myFunction();
}
