import 'dart:io';

String removeTrailingZeroes(String number) {
  List<String> result = [];
  bool hasDecimalPoint = number.contains(".");
  if(!hasDecimalPoint) return result.join();
  List<String> numberList = [];
  List<String> sortedResult = [];
  numberList = number.split(".").toList();
  result = numberList[0].split("");
  result.add(".");
  bool nonZeroValue = false;
  List<String> traversableNumber = numberList[1].split("").reversed.toList();
  for (int i = 0; i < traversableNumber.length; i++) {
    if (traversableNumber[i] == "0" && !nonZeroValue) {
      continue;
    }
    nonZeroValue = true;
    sortedResult.add(traversableNumber[i]);
  }
  result = result + sortedResult.reversed.toList();
  return result.toList().join();
}

main() {
  String input = stdin.readLineSync()!;
  print(removeTrailingZeroes(input));
}
