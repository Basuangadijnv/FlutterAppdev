//on implementing any class all its functions must be overriden
//abstract class we can have only the declaration of function and variables
//NOTE: abstract classes can not have objects
abstract class vehicle {
  num speed = 0;
  int no_wheels = 0;
  void accelerate(num speed);
}

class Car implements vehicle {
  num speed = 0;
  int no_wheels = 4;
  void accelerate(num speed) {
    this.speed = 10;
  }

  void getinfo() {
    print('this is a car');
  }
}

class Iron {
  var color = 'red';
  var material = 'iron';
  void showmaterial() {
    print('this is made of $material and color is $color');
  }
}

class cycle extends Iron implements vehicle {
  num speed = 0;
  int no_wheels = 4;
  void accelerate(num speed) {
    this.speed = 10;
  }

  void getinfo() {
    print('this is a cycle');
    super.showmaterial();
  }
}

void main() {
  print('welcome to implementaion');
  vehicle v = Car();
  v.speed = 10;
  v.no_wheels = 4;
  v.accelerate(20);
  (v as Car).getinfo();

  var c = cycle();
  c.getinfo();
}
