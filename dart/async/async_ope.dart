void main() async {
  print('task 1');
  await printTask();
  print('task 3');
}

printTask() async {
  await Future.delayed(Duration(seconds: 2), () {
    print('task 2');
  });
}
