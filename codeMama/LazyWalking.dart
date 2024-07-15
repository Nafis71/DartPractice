import 'dart:io';

int getTime(int totalSteps, int totalTimeForEachStep){
  int totalTime = 0;
  for(int i =0; i<totalSteps; i++){
    totalTime += (totalTimeForEachStep + i);
  }
  return totalTime;
}


main(){
  String input = stdin.readLineSync()!;
  List<String> inputValues = input.split(" ");
  int totalSteps = int.parse(inputValues[0]);
  int totalTimeForEachStep = int.parse(inputValues[1]);
  print(getTime(totalSteps, totalTimeForEachStep));
}