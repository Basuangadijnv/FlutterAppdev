//static variable or function access does not require object creation
//these are common to all the objects if created
class Constants {
  static String greeting = 'Hi,welcome to local app!';
  static String bye = 'See you again!';
  int a = 1;
  Constants() {
    print('contructer is called');
  }
  static void refresh() {
    print('the page is refreshed');
  }
}

void main() {
  var obj1 = Constants();
  print(Constants.greeting);
  // print(obj1.greeting);
  print(Constants.bye);
  // print(obj1.bye);
  // print(Constants.a);
  print(obj1.a);
  Constants.refresh();
}
