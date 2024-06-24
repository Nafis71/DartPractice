import 'dart:io';

int getTrueCount(List<String> listOfInteger){
  int count = 0;
  int length = listOfInteger.length;
  for(int i = 0; i<length; i++){
    if(i != 0 && listOfInteger[i] == "1"){
      count+=1;
    }
  }
  return count;
}

main(){
  String input = stdin.readLineSync()!;
  List<String> listOfInteger = input.split(" ");
  print(getTrueCount(listOfInteger));
}