import 'dart:io';

String getTheFruit(int input) {
  Map<int, String> fruitList = {
    31231: "Bannana",
    43861: "Elderberry",
    82678: "Honeydew Melon",
    23456: "Apple",
    78901: "Mango",
    98765: "Nectarine",
    45678: "Orange",
    67890: "Raspberry",
    21098: "Tangerine",
  };
  return fruitList[input]!;
}

main() {
  int input = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(getTheFruit(input));
}
