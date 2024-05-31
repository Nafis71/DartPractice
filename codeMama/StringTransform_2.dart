/*
You are tasked with writing a program that takes a string 𝑆 as input and transforms it in such a way that after every two characters, add charecter 'x' in the string 𝑆
S. If 'x' is added immideately before last two characters, you need not to add the character 'x' at the end.

  */

import 'dart:io';

String transformString(String text) {
  List<String> listOfString = [];
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (count == 2) {
      listOfString.add("x");
      listOfString.add(text[i]);
      count = 1;
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
