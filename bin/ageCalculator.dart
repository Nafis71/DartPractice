import 'dart:io';

main(){
  input();
}

void input(){
  print("Enter your birthdate (YYYY-MM-DD):");
  String? input = stdin.readLineSync()?.trim();
  if(input!= null){
    List<String> parts = input.split("-");
    if(parts.length != 3 || parts.contains("")){
      print("Invalid date format. Exiting.");
      return;
    }
    calculateAge(parts);
  }
}
void calculateAge(List<String> parts){
  int year = int.tryParse(parts[0]) ?? 0;
  int month = int.tryParse(parts[1]) ?? 0;
  int day = int.tryParse(parts[2]) ?? 0;

  DateTime currentDate = DateTime.now();
  DateTime birthDate = DateTime(year,month,day);
  print("Your age : ${currentDate.year - birthDate.year}");
}