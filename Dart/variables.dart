//declaration
void main() {
  //bool,int,float,String,dynamic
  int a;
  String s = 'first string';
  dynamic d = 5;
  print('d=$d');
  d = 'now is string type';
  print('d=$d');
  a = 20;
  print("a=$a");
  print('s=$s');
  //type inference(auto detecting type without declaring)
  var num = 10;
  final num2 = 30;
  const num3 = 20;
  print('num=$num and type is ${num.runtimeType}');
  print('num=$num2 and type is ${num2.runtimeType}');
  print('num=$num3 and type is ${num3.runtimeType}');
}
