enum Gender { Male, Female }

class Person {
  // attr.
  String? _name;
  int? age;
  Gender? gender;

  set name(String name) {
    this._name = name;
  }

  setAge(int age) {
    if (age > 0) {
      this.age = age;
    } else {
      print('Invalid age');
    }
  }

  String get name => this._name ?? '';
}
