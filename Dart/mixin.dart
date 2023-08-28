//mixins can not be extended but using with we can all mixin properties,functions to other class
//mixins cant be instansised
//object is base class for accept null
void main() {
  Object d = dog();
  (d as dog).jumping();
  d.sound();
  d.getinfo();
}

mixin Animal {
  int jump = 10;
  void sound() {
    print('animal sounding');
  }

  void jumping() {
    print('jumping');
  }
}

mixin Mat {
  var color = 'blue';
  void getinfo() {
    print('color: $color');
  }
}

class dog with Animal, Mat {
  void jumping() {
    print('my info');
    print('jumping at $jump');
  }
}
