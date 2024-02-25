import 'dart:io';

List<int> getSwappedNumber(int firstNumber, int secondNumber){
  int temp = firstNumber;
  firstNumber = secondNumber;
  secondNumber = temp;
  return [firstNumber,secondNumber];
}
main(){
  String inputs = stdin.readLineSync()!;
  List<String> values = inputs.split(" ");
  List<int> result = getSwappedNumber(int.parse(values[0]), int.parse(values[1]));
  print("Before swapping: num1 = ${values[0]}, num2 = ${values[1]}");
  print("After swapping: num1 = ${result[0]}, num2 = ${result[1]}");
}