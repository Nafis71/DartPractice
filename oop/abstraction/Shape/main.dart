import 'Circle.dart';
import 'Rectangle.dart';

void main(){
  Circle circle =  Circle(radius: 6.7);
  Rectangle rectangle =  Rectangle(width: 5, height: 6);
  print("Area of the circle : ${circle.area().toStringAsFixed(2)}");
  print("Area of the rectangle : ${rectangle.area().toStringAsFixed(2)}");
}