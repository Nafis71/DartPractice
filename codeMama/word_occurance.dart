
import 'dart:io';

Map<String,int> getWordCount(String text){
  Map<String,int> wordCountMap = {};
  List<String> listOfStrings = text.split(RegExp(r"\W+"));
  for(String value in listOfStrings){
    if(value.isNotEmpty){
      wordCountMap.update(value.toLowerCase(), (count)=> ++count, ifAbsent: ()=> 1);
    }
  };
  return wordCountMap;
}



main(){
  String testInput = stdin.readLineSync()!;
  print(getWordCount(testInput.trim()));
}