import 'dart:io';

main(){
  print(stdin.readLineSync()!.split("").toSet().length == 1 ? true : false);
}