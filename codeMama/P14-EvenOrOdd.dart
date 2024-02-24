import 'dart:io';

bool isEven(int number){
  if(number.isEven){
    return true;
  }
  return false;
}


void main() {
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;
  if(isEven(number)){
    print("$number is an even number.");
  } else{
    print("$number is an odd number.");
  }

}