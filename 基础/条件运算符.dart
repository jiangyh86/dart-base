void main(List<String> args) {
  var str1 = 'Hello';
  var str2 = 'Word';
  

  // expre1 ?? expre2 非空条件判断符 expre1非空返回expre1否则返回expre2
  // var result = str1 ?? str2.toUpperCase();
  var result2 = null ?? str2.toUpperCase();
  // print(result);//Hello
  print(result2);//WORD
}