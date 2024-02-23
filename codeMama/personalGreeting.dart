import 'dart:io';

void printGreeting(String name){
  print("Hello, $name! Nice to meet you.");
}

main(){
  String name = stdin.readLineSync()!;
  printGreeting(name);
}