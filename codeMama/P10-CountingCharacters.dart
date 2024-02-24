import 'dart:io';

int getLength(String word){
  return word.length;
}

void main() {
  String word = stdin.readLineSync()!;
  print(getLength(word));
}