import 'dart:io';
double getFarenheit(double celcius){
  return celcius * (9/5) + 32;
}

main(){
  double celcius = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  print("The temperature in Fahrenheit is: ${getFarenheit(celcius).toStringAsFixed(2)}");
}