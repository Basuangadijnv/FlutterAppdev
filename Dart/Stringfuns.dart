void main() {
  //atributes
  String s = 'first';
  //length
  print('lenght of s=${s.length}');
  //substring(strat,end) prints from start to less than end
  print(s.substring(2, 4));
  print(s.substring(0, 4));
  //print(s.substring(2,7));//throws runtime error as 7 greater than length
}
