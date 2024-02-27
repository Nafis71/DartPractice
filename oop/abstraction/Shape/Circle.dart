import 'dart:math';

import 'Shape.dart';

class Circle extends Shape {
  late double radius;

  Circle({required this.radius});

  @override
  double area() {
    return 3.14 * (pow(radius, 2));
  }
}
