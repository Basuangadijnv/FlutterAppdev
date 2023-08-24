//all control statent are as in case of c++

void main() {
  var age = 25;
  if (age >= 18)
    print("adult");
  else
    print("child");

  if (age >= 25)
    print("can stand for mp election");
  else if (age >= 18)
    print("is eligible for voting");
  else
    print('not eligible for voting');

  for (int i = 0; i < age; i++) print('$i is smaller than age');

  int i = 0;
  while (i < age) print(i++);
  var arr = [2, 4, 4, 5, 9];
  for (i in arr) print(i);
  //switch as in case of c++ but break is not required
}
