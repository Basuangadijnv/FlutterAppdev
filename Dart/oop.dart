//Object oriented
//Inheritence
//Pholymorphism
//Abstraction
//Encapsulation
void main() {
  //polymorphism ->overriding
  print('polymorphism');
  Cat c = Cat();
  c.sound();
  Dog d = Dog();
  d.sound();
  //Abstraction=>hides all detais and shows only necessary ones(abstrct class)
  Animal a = Cat();
  a.sound();
  a = Dog();
  a.sound();
  //encapsulation
  print('the class encapsulates methods and datamembers together');
}

abstract class Animal {
  void sound();
}

class Cat implements Animal {
  @override
  void sound() {
    print('cat is sounding');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('dog is sounding');
  }
}
