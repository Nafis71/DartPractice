import 'dart:io';
int getReminder(int firstValue, int secondValue){
  return firstValue % secondValue;
}
void main() {
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");
  int firstValue = int.tryParse(values[0]) ?? 0;
  int secondValue = int.tryParse(values[1]) ?? 0;
  print(getReminder(firstValue, secondValue));
}