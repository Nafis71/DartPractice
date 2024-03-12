import 'Circle.dart';
import 'ShapeType.dart';
import 'Triangle.dart';

abstract class Shape {
  factory Shape(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.triangle:
        return Triangle();
    }
  }

  void draw();
}
