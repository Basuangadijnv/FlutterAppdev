//without return type
void display() {
  print('this is display fun');
}

//with return type
int add2num(int a, int b) {
  return a + b;
}

//multiple reurn values
(int, String) rollnoname() {
  return (13, 'Basavaraj');
}

//named arguments function
void printdetails({required int age, required String name, String? address}) {
  print('name=$name');
  print('age=$age');
  print('adress=${address ?? 'not provided'}');
}

//name returntypes function
({double area, double perimeter}) rect(
    {required double len, required double breadth}) {
  return (area: len * breadth, perimeter: 2 * (len + breadth));
}

//returning function type
Function getadd2num() {
  return add2num;
}

void main() {
  display();
  print(add2num(2, 5));

  var check = (3, 5);
  print(check.runtimeType);
  var (r, n) = rollnoname();
  print(rollnoname());
  var v = rollnoname();
  print(v.$2);
  print(v.$1);
  print('r=$r,n=$n');
  print(rollnoname().runtimeType);

  printdetails(age: 41, name: 'Kartik');
  //printdetails(name: 'kartik');//throws error age is required
  printdetails(age: 22, name: 'Keshav', address: 'Mahalingpur');

  var calc = rect(len: 10, breadth: 5);
  print('area=${calc.area} and perimeter=${calc.perimeter}');

  var fun = getadd2num();
  print(fun(2, 5));
}
