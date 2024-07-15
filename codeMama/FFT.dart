import 'dart:io';

main(){
  int length = int.parse(stdin.readLineSync()!);
  List<String> listOfStrings = [];
  for(int i= 0; i<length; i++){
    listOfStrings.add(stdin.readLineSync()!);
  }
  Map<int,String> matchingStrings = {};

  for(int i = 0; i<length -2; i++){
    String fistCharacter = listOfStrings[i][0].toLowerCase();
    String secondCharacter = listOfStrings[i+1][0].toLowerCase();
    String thirdCharacter = listOfStrings[i+2][0].toLowerCase();
    if(fistCharacter == "f" && secondCharacter == "f" && thirdCharacter == "t"){
      matchingStrings[i] = "${listOfStrings[i]} ${listOfStrings[i+1]} ${listOfStrings[i+2]}";
      i += 2;
    }
  }
  print(matchingStrings.length);
  matchingStrings.forEach((key,value) {
    print(value);
  });
}