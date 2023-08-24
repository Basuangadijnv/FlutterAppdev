Function fun1() {
  return () {
    print('yhooo');
  };
}

void main() {
  var f = fun1();
  f();

  print(f()); //as this anonymous funtion returns null

  print(() {
    print('yahoo');
  }()); //first function is called then the returned null

  () {
    print('yahoo');
  }();
}
