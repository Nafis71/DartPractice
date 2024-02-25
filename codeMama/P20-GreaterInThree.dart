import 'dart:io';

int getMaxValue(int firstNumber, int secondNumber, int thirdNumber){
  if(firstNumber > secondNumber && firstNumber > thirdNumber){
    return firstNumber;
  } else if(secondNumber > firstNumber && secondNumber > thirdNumber){
    return secondNumber;
  }else{
    return thirdNumber;
  }
}

main(){
  String inputs = stdin.readLineSync()!;
  List<String> values = inputs.split(" ");
  int firstNumber = int.parse(values[0]);
  int secondNumber = int.parse(values[1]);
  int thirdNumber = int.parse(values[2]);
  print(getMaxValue(firstNumber, secondNumber, thirdNumber));
}