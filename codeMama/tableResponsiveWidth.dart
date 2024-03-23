import 'dart:io';

int getTablePosition(int screenWidth, int tableWidth){
  return (screenWidth - tableWidth) ~/ 2;
}

main(){
  int tableWidth = 300;
  int screenWidth = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(getTablePosition(screenWidth, tableWidth));
}