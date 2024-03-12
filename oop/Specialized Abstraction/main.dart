import 'ColoredCircle.dart';
import 'ColoredShape.dart';

main(){
  ColoredShape coloredShapes = ColoredCircle("Blue");
  ColoredCircle coloredShape = ColoredCircle("Red");
  coloredShape.draw();
  coloredShapes.draw();
}