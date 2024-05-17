import 'dart:io';
import 'dart:math';

int getWorkingHour(int startingHour, int endingHour) {
  int workingHour = 0;
  if (startingHour > endingHour) {
    workingHour = (24 - startingHour) + endingHour;
  } else {
    workingHour = endingHour - startingHour;
  }
  return (workingHour == 0) ? 24 : workingHour;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(" ");
  int startingHour = int.tryParse(inputList[0]) ?? 0;
  int endingHour = int.tryParse(inputList[1]) ?? 0;
  print(getWorkingHour(startingHour, endingHour));
}
