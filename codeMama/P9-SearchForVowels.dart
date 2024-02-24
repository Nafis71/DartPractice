import 'dart:io';

bool isVowel(String word){
  List<String> vowelList = ['a','e','i','o','u','A','E','I','O','U'];
  int size = word.length;
  for(int i = 0; i<size; i++){
    if(vowelList.contains(word[i])){
      return true;
    }
  }
  return false;
}

void main() {
 String word = stdin.readLineSync()!;
 if(isVowel(word)){
   print("The string contains a vowel.");
 } else{
   print("The string does not contain any vowel.");
 }
}