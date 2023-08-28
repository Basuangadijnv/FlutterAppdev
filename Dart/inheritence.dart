//dart does not supprort multiple inheritence
//dart support=> single, multilevel,hirarchical
//we can assign a derived class object to base class variable

class person {
  String name = 'abc';
  num age = 0;
  person(this.name, this.age);
  void details() {
    print('name: $name');
    print('age=$age');
  }
}

//single inheritance
class student extends person {
  int rollno = 0;
  num cgpa = 0;
  student(super.name, super.age, this.rollno, this.cgpa);
  @override
  void details() {
    super.details();
    print('rollno: $rollno');
    print('cgpa: $cgpa');
  }
}

//multilevel inheritence
class primarystudents extends student {
  int std;
  String div;
  String gaurdian;
  primarystudents(super.name, super.age, super.rollno, super.cgpa, this.std,
      this.div, this.gaurdian);
  void details() {
    super.details();
    print('standard: $std');
    print('div: $div');
    print('Gaurdian: $gaurdian');
  }
}

void main() {
  var p1 = person('Sangayya', 22);
  p1.details();
  var s1 = student('Abhi', 19, 6, 9.1);
  s1.details();

  var ps1 = primarystudents('pavan', 6, 32, 9, 1, 'A', 'Mahantesh');
  ps1.details();

  print('accessing the derived class object through base class variable');
  //s1 = p1; //derived class variable cant hold the base class object
  p1 = s1;
  //print(p1.rollno);// throws error
  print((p1 as student).rollno);

  student s2 = primarystudents('Mallu', 12, 34, 8, 5, 'B', 'Guru');
  (s2 as primarystudents).details();
}
