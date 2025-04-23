import 'dart:math';

abstract class Area {
  getArea();
}

abstract class Perimeter {
  getPerimeter();
}

class Circle implements Area, Perimeter {
  double r;
  Circle(this.r);

  @override
  getArea() {
    print('Area is ${pi * r * r}');
  }

  @override
  getPerimeter() {
    print('Perimeter is ${2 * pi * r}');
  }
}
