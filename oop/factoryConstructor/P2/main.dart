import 'Shape.dart';
import 'ShapeType.dart';

main(){
  Shape circleShape = Shape(ShapeType.circle);
  Shape triangleShape = Shape(ShapeType.triangle);
  circleShape.draw();
  triangleShape.draw();
}