//only getter is present => read only value
//only setter is present => write only value

class A {
  num _height = 2;
  num _weight = 3;
  //getter for _height
  num get height => _height;
  void display() {
    print(_height);
  }

  //setter for height if we remove setter we cant be able to set height

  //set height(num h) => _height = h;

  //getter for weight
  num get weight {
    return _weight;
  }

  //setter for weight
  set setweight(num w) {
    _weight = w;
  }
}

void main() {
  print('getters and setters\n');
  var obj = A();
  //obj.height = 34;
  print(obj.height);
  obj.setweight = 78;
  print(obj.weight);
}
