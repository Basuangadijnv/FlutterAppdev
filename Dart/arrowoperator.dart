//single line statements as function definition we can use to define function

void display() => print('this is display funtion');
int getnum() => 5;
num addnum(num a, num b) => a + b;

void main() {
  display();
  print('sum of ${getnum()} and ${getnum()} is ${addnum(getnum(), getnum())}');
}
