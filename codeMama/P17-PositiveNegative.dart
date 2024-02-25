import 'dart:io';

void checkNumber(int number){
 if(number.isNegative){
   print("$number is a negative number.");
 }else if(number == 0){
   print("The number is zero. ");
 }else{
   print("$number is a positive number.");
 }
}
main(){
  int number = int.tryParse(stdin.readLineSync()!)?? 0;
  checkNumber(number);
}