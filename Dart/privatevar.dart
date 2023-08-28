//private variables in dart are private to files not to class
//private variables declared with starting with underscore(_)
class A {
  int _num = 20;
  void display() => print('_num=$_num is a private variable');
  void changenum(int _b) {
    _num = _b;
  }
}

void main() {
  print('this is main');
  var obj = A();
  obj.display();
  obj.changenum(30);
  obj.display();
  //we can access _num here also
  print('obj._num=${obj._num}');
}
