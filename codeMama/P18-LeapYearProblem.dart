import 'dart:io';

bool isLeapYear(int year){
  if(year % 4 == 0){
    if(year % 400 == 0){
      return true;
    }
    if(year % 100 == 0){
      return false;
    }
    return true;
  }
  return false;
}

main(){
  int year = int.tryParse(stdin.readLineSync()!) ?? 0;
  if(isLeapYear(year)){
    print("$year is a leap year.");
  } else{
    print("$year is not a leap year.");
  }
}