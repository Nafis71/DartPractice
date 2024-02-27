import 'Shape.dart';

class Rectangle extends Shape {
  late double width, height;

  Rectangle({required this.width, required this.height});

  @override
  double area() {
    return width * height;
  }
}
