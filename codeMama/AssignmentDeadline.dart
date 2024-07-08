import 'dart:io';

bool checkDeadline(int totalTime,  int firstAssignmentTime, int secondAssignmentTime){
  if(totalTime >= (firstAssignmentTime + secondAssignmentTime)){
    return true;
  }
  return false;
}

main(){
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");
  if(checkDeadline(int.parse(values[0]), int.parse(values[1]), int.parse(values[2]))){
    print("Yes");
  } else{
    print("No");
  }
}
