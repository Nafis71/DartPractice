import 'dart:io';

StringBuffer getNumberRange(int l1, int r1, int l2, int r2) {
  StringBuffer numberRange = StringBuffer();
  for(int number = l1; number <= r1; number++){
    if(number == l2){
      number += r2- l2;
      continue;
    }
    numberRange.write(number.toString() + " ");
  }
  return numberRange;
}

main() {
  String input = stdin.readLineSync() ?? "0";
  List<String> values = input.split(" ",);
  int l1 = int.tryParse(values[0]) ?? 0;
  int r1 = int.tryParse(values[1]) ?? 0;
  int l2 = int.tryParse(values[2]) ?? 0;
  int r2 = int.tryParse(values[3]) ?? 0;
  print(getNumberRange(l1, r1, l2, r2));
}
