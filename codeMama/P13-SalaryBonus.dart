import 'dart:io';

int calculateBonus(double salary){
  return (salary * (10/100)).toInt();
}

main(){
  double salary = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  print(calculateBonus(salary));
}