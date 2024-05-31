import 'dart:io';

int getStringCountResult(String target, List<String> listOfStrings) {
  int count = 0;
  for (String string in listOfStrings) {
    if (string.contains(target)) {
      count++;
    }
  }
  return count;
}

main() {
  List<String> listOfStrings = [];
  for (int i = 0; i < 10; i++) {
    listOfStrings.add(stdin.readLineSync()!);
  }
  print(getStringCountResult("T", listOfStrings));
}
