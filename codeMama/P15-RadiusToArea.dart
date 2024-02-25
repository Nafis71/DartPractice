import 'dart:io';
import 'dart:math';

double getArea(double radius){
  return 3.14 * pow(radius, 2);
}

main(){
  double radius = double.tryParse(stdin.readLineSync()!) ?? 0.00;
  print("The area of the circle is ${getArea(radius).toStringAsFixed(2)} square units.");
}