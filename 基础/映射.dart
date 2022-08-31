void main() {
  var gifts = {
    'first': 'Java',
    'second': 'Dart',
  };
  print(gifts);//{first: Java, second: Dart}
  print(gifts.keys);

  print(gifts['first']);//Java
  print(gifts['hhh']);//null
}