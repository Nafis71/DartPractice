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
  late int age;
  if(currentDate.month != birthDate.month) {
    age = (currentDate.year - birthDate.year) - 1;
  } else{
    age = currentDate.year - birthDate.year;
  }
  int ageMonth = calculateMonths(birthDate: birthDate, currentDate: currentDate);
  int ageDays = calculateDays(birthDate: birthDate, currentDate: currentDate);
  print("$age years $ageMonth months $ageDays days");
}

int calculateMonths({required DateTime birthDate, required DateTime currentDate}){
  if(birthDate.month != currentDate.month){
    if(birthDate.month > currentDate.month){
      return birthDate.month - currentDate.month;
    } else{
      return currentDate.month - birthDate.month;
    }
  }else{
    return 0;
  }
}
int calculateDays({required DateTime birthDate, required DateTime currentDate}){
  if(birthDate.day != currentDate.day){
    if(birthDate.day > currentDate.day){
      return birthDate.day - currentDate.day;
    } else{
      return currentDate.day - birthDate.day;
    }
  }else{
    return 0;
  }
}