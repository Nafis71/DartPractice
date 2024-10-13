import 'dart:io';

bool hasConsecutiveNumbers(int arrLength, List<int> arr){
  bool status = true;
  arr.sort();
  for(int i=0; i<arrLength; i++){
    if(i != arrLength - 1) {
      if (arr[i + 1] - arr[i] != 1) return false;
    }
  }
  return status;
}

List<int> convertArray(List<String> arr){
  List<int> convertedArr =[];
  for(String number in arr){
    convertedArr.add(int.parse(number));
  }
  return convertedArr;
}

main(){
  int length = int.parse(stdin.readLineSync()!);
  String input = stdin.readLineSync()!;
  List<String> listOfInput = input.split(" ");
  List<int> arr = convertArray(listOfInput);
  print(hasConsecutiveNumbers(length, arr));
}