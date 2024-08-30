import 'dart:io';

int getTotalUniqueWord(String word){
  int wordLength = word.length;
  Map<String,int> uniqueWordMap ={};
  for(int i=0; i<wordLength; i++){
    uniqueWordMap.putIfAbsent(word[i], ()=> 0);
  }
  return uniqueWordMap.length;
}

main(){
  String input =  stdin.readLineSync()!;
  print(getTotalUniqueWord(input));
}