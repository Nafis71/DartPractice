import 'dart:io';

String getFunnyString(String text){
  for(int i=0; i<text.length; i++){
    if((i %2 ==0 && text[i] != text[i].toLowerCase()) || (i%2 != 0 && text[i] != text[i].toUpperCase())){
      return "No";
    }
  }
  return "Yes";
}

main(){
  String input = stdin.readLineSync()!;
  print(getFunnyString(input));
}