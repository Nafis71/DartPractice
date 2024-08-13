
import 'dart:io';

int totalView(List<String> numberList){
  int total = 0;
  for(String number in numberList){
    if(int.parse(number) %2 == 0){
      total ++;
    }
  }
  return total;
}

main(){
  String input = stdin.readLineSync()!;
  List<String> numberList = input.split(" ");
  print(totalView(numberList));
}