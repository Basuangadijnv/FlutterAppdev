class A {
  int? num1, num2;
  void display() {
    print('num1=$num1,num2=$num2');
  }
}

void main() {
  //arithmatic operator
  print(3 + 5);
  print(5 - 2);
  print(4 * 2);
  print(11 / 2);
  print(7 % 2);
  //relational operator
  print(2 > 3);
  print(3 >= 2);
  print(3 <= 2);
  print(3 < 2);
  print(3 == 2);
  print(3 != 2);
  //logical operator
  print(3 == 3 && 3 != 4);
  print(true && false);
  print(true && true);
  print(!true);
  print(false && false); //dead code is one which will never be reached
  print(false || true);
  print(true || false);
  print(true || true);
  print(false || false);
  print(!true);
  print(!false);
  //bitwise operator
  int a = 0, b = 1;
  print('$a|$b=${a | b}');
  print('$a&$b=${a & b}');
  print('$a^$b=${a ^ b}');
  print('~a=${~a}');
  print('$b<<2=${b << 2}');
  int c = -33;
  print('$c>>2=${c >> 2}');
  print('$c>>>2=${c >>> 2}'); //takes the value of c as unsigned
  //Ternary
  a = 4;
  b = 6;
  a > b ? print('$a is greater than $b') : print('$a is not greater than $b');
  //type test operators is as !is
  String s = '45';
  print(a is int);
  print(s is! int);
  //cascade notation(..)
  A()
    ..num1 = 3
    ..num2 = 4
    ..display();
}
