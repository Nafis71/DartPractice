import 'dart:io';

String getNumberRange(int l1, int r1, int l2, int r2) {
  String numberRange = "";
  int gap = 0;
  bool flag = false;
  for (int number = l1; number <= r1; number++) {
    if (number != l2 && gap == 0) {
      numberRange += number.toString() + " ";
    } else if (flag) {
      gap--;
    } else {
      flag = true;
      gap = r2 - l2;
      continue;
    }
  }
  return numberRange;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");
  int l1 = int.tryParse(values[0]) ?? 0;
  int r1 = int.tryParse(values[1]) ?? 0;
  int l2 = int.tryParse(values[2]) ?? 0;
  int r2 = int.tryParse(values[3]) ?? 0;
  print(getNumberRange(l1, r1, l2, r2));
}
