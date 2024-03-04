import 'Shape.dart';

abstract class ColoredShape extends Shape{
  String color;
  ColoredShape(this.color);
  void displayColoredShape(){
    print("Color : $color");
    //just added for push
  }
}