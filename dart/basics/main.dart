main() {
  // display('Kamal', 20, 'Male');
  display1('Kamal', 20, 'Female');
  display4('Kamal', age: 20, gender: 'Male');
}

// 1) positional parameters  (ordered,required)
void display(String name, int age, String gender) {
  print('Name: $name, Age: $age, Gender: $gender');
}

// 2) positional parameters  (ordered,required & optional)
void display1(String name, int age, [String gender = 'Male']) {
  print('Name: $name, Age: $age, Gender: $gender');
}

// 3) named parameters (not ordered, required)
void display2(
    {required String name, required int age, required String gender}) {
  print('Name: $name, Age: $age, Gender: $gender');
}

// 4) named parameters (not ordered, required & optional)
void display3(
    {required String name, required int age, String gender = 'Male'}) {
  print('Name: $name, Age: $age, Gender: $gender');
}

// 5) Mix named parameters with positional
void display4(String name, {required int age, String gender = 'Male'}) {
  print('Name: $name, Age: $age, Gender: $gender');
}
