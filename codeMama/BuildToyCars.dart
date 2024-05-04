import 'dart:io';

int getCars(int totalWheels, int totalCarBodies, int totalFigures) {
  int leastPossibleCars = totalWheels ~/ 4;
  int leastCarBodies = totalCarBodies ~/ 1;
  int leastFigures = totalFigures ~/ 2;
  leastPossibleCars = (leastCarBodies < leastPossibleCars)
      ? leastCarBodies
      : leastPossibleCars;
  leastPossibleCars = (leastFigures < leastPossibleCars)
      ? leastFigures
      : leastPossibleCars;
  return leastPossibleCars;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");
  int totalWheels = int.tryParse(values[0]) ?? 0;
  int totalCarBodies = int.tryParse(values[1]) ?? 0;
  int totalFigures = int.tryParse(values[2]) ?? 0;
  print(getCars(totalWheels, totalCarBodies, totalFigures));
}
