void main() {
  //both final and const can only be initialised once
  //final variable can accept value at runtime
  const pi = 3.14;
  final five = 5;

  print('five=$five');
  print('pi=$pi');
  //const can not be assigned value at runtime.
  //const c = DateTime.now();
  final f = DateTime.now();
  print('f=$f');
  //print('c=$c');
}
