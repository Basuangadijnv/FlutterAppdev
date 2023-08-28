//sealed class cant be instantiated but final class can be instantiated
void main() {
  //var a = A();//throws error it cant be instantiated
  var a1 = A1();
  print(a1);
}

sealed class A {}

final class A1 {}
