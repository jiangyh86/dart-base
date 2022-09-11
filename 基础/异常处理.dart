void main(List<String> args) {
  try {
    print(11 ~/ 0);
  } on UnsupportedError {
    print('除数为零！');
  } finally {
    print('退出！');
  }
}
