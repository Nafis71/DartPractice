import 'dart:io';

String transformString(String text) {
  List<String> listOfString = [];
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (count == 2) {
      listOfString.add(text[i].toUpperCase());
      count = 0;
      continue;
    }
    listOfString.add(text[i]);
    count++;
  }
  return listOfString.join("");
}

main() {
  String testString = stdin.readLineSync()!;
  print(transformString(testString));
}
