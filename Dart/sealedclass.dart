//NOTE: sealed class is implicitly an abstrct class
//sealed helps in checking all direct subclass in switch
//sealed classes cant be accessed outside its library
void main() {
  Choice ch = c();
  //if we skip any of subclass objects of Choice exhaustiveness is checked
  switch (ch) {
    case a():
      print('choice a');
    case b():
      print('choice b');
    case c():
      print('choice c');
  }
}

sealed class Choice {}

class a implements Choice {}

class b implements Choice {}

class c implements Choice {}
