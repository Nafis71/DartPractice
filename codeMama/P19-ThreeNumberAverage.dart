import 'dart:io';

double getAverage(double firstNumber ,double secondNumber, double thirdNumber){
  return (firstNumber + secondNumber + thirdNumber) / 3;
}
main(){
  String inputs = stdin.readLineSync()!;
  List<String> values = inputs.split(" ");
  double firstNumber = double.parse(values[0]);
  double secondNumber = double.parse(values[1]);
  double thirdNumber = double.parse(values[2]);
  print("Average: ${getAverage(firstNumber, secondNumber, thirdNumber).toStringAsFixed(2)}");
}