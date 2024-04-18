import 'dart:io';

int getResult(String equation){
  String arithmeticOperator = equation[2];
  if(arithmeticOperator == "+"){
    return (int.tryParse(equation[0]) ?? 0) + (int.tryParse(equation[4]) ?? 0);
  } else if(arithmeticOperator == "-"){
    return (int.tryParse(equation[0]) ?? 0) - (int.tryParse(equation[4]) ?? 0);
  } else if(arithmeticOperator == "*"){
    return (int.tryParse(equation[0]) ?? 0) * (int.tryParse(equation[4]) ?? 0);
  } else {
    return (int.tryParse(equation[0]) ?? 0) ~/ (int.tryParse(equation[4]) ?? 0);
  }
}

main(){
  String equation  = stdin.readLineSync()!;
  print(getResult(equation));
}