class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void display() {
    print('I am a person');
  }
}

class Student extends Person {
  int? grade;

  // Student(super.name, super.age, this.grade);
  Student(String name, int age, this.grade) : super(name, age);

  @override
  void display() {
    super.display();
    print('i am a student');
  }
}

class Doctor extends Person {
  double? salary;

  Doctor(super.name, super.age, this.salary);

  @override
  void display() {
    print('I am a doctor');
  }
}
