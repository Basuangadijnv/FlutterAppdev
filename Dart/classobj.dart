//note: dart does not support overloadin in functions as it is dynamically typed language
//note: overriding is possible in dart
class Cookie {
  double? size;
  String shape;
  Cookie(this.size, this.shape);
  void baking() {
    print('cookie is baking');
  }

  bool iscooling() {
    return false;
  }
}

void main() {
  var cookie1 = Cookie(3, 'circle');
  cookie1.baking();
  print('size ${cookie1.size} cm');
  print('shape ${cookie1.shape}');
  cookie1.iscooling();
  cookie1.iscooling();
}
