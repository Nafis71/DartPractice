int getSecondMax(List<int> listOfNumbers){
  int max = listOfNumbers[0];
  int secondMax = max;
  for(int value in listOfNumbers){
    if(value > max){
      secondMax = max;
      max = value;
    } else if(value > secondMax && value != max){ // "value != max" is for checking duplicate values in the list.
      secondMax = value;
    }
  } //time complexity O(n);
  return secondMax;
}

void main(){
  List<int> listOfNumbers = [13,34,2,34,33,33,36,35];
  print("Second Maximum Number is - ${getSecondMax(listOfNumbers)}");
}