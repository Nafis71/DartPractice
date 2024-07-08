import 'dart:io';

void canBuyCake(int cakeWeight, int sugarQuantity, int calorieQuantity){
  if(cakeWeight >= 200 && sugarQuantity >= 50 && calorieQuantity >= 150){
    print("Yes");
  } else{
    print("No");
  }
}

main(){
  String input = stdin.readLineSync()!;
  List<String> values =  input.split(" ");
  canBuyCake(int.parse(values[0]), int.parse(values[1]), int.parse(values[2]));
}