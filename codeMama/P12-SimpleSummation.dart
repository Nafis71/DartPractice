import 'dart:io';
int getSummation(int firstNumber, int secondNumber){
  return firstNumber + secondNumber;
}
void main() {
 String input = stdin.readLineSync()!;
 List<String> value = input.split(" ");
 int firstNumber = int.tryParse(value[0]) ?? 0;
 int secondNumber = int.tryParse(value[1]) ?? 0;
 print(getSummation(firstNumber, secondNumber));
}