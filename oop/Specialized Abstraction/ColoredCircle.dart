import 'ColoredShape.dart';

class ColoredCircle extends ColoredShape{
  ColoredCircle(super.color);

  @override
  void draw() {
   print("Colored circle has been drawn");
   super.displayColoredShape();
  }

}