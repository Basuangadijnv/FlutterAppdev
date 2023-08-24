//the variable holiding null must declred with type?
void main() {
  //for nullable variable default value will be null
  //int a=null
  //above line throughs error

  var b = null; //b will be dynamic type
  print('type of b is ${b.runtimeType}');
  b = 10;
  b = 'ten';
  //int? a=null;//this can also be used
  String? a;
  print('a=$a');

  a = 'welcome';
  print(a);
  print(a.length);
  print(a?.length);
  print('a=$a');
  a = null;
  //print(a!.length); throws error as null
  print(a?.length); //gives null if a is null else len

  //we can also replace null by some other value if it is null
  print(a?.length ?? 0);
  print(a?.length ?? 'it does not have any string');
  print('a=${a ?? 'it is a null'}');
}
