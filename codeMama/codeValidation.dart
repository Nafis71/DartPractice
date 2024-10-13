import 'dart:io';

bool validateCode(String code){
  int length = code.length;
  if(length != 7 || code[0] != "#") return false;
  RegExp digits = RegExp(r'[0-9]+');
  RegExp alphabetRegEx = RegExp(r'[a-z A-Z]');
  for(int i=1; i<length; i++){
    if(!digits.hasMatch(code[i]) || !alphabetRegEx.hasMatch(code[i])){
      return false;
    }
  }
  return true;
}

main(){
  String input = stdin.readLineSync()!;
  print(validateCode(input));
}