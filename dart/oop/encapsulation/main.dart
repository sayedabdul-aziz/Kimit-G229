import 'person.dart';

void main() {
  Person p1 = Person();
  p1.age = -20;
  p1.name = 'Kamal';
  p1.gender = Gender.Female;
  print(p1.name);
}
