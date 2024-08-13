import 'dart:io';

int getSeedCount(int fieldA, int fieldB) {
  int seedCount = 0;
  if (fieldA > fieldB) {
    int temp = fieldA;
    fieldA = fieldB;
    fieldB = temp;
  }
  for (int i = fieldA; i < fieldB; i++) {
    if (i % 2 != 0) {
      seedCount += i;
    }
  }
  return seedCount;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> inputValues = input.split(" ");
  int fieldA = int.parse(inputValues[0]);
  int fieldB = int.parse(inputValues[1]);
  print(getSeedCount(fieldA, fieldB));
}
