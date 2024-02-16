int findMin(List<int> listOfNumbers){
  int minimumValue = listOfNumbers[0];
  for(int value in listOfNumbers){
    if(value < minimumValue){
      minimumValue = value;
    }
  }
  return minimumValue;
}
int findMax(List<int> listOfNumbers){
  int maximumValue = listOfNumbers[0];
  for(int value in listOfNumbers){
    if(value > maximumValue){
      maximumValue = value;
    }
  }
  return maximumValue;
}
void main(){
  List<int> listOfNumbers = [3, 2, 4, 7, 10, 6, 5];
  print(findMin(listOfNumbers));
  print(findMax(listOfNumbers));
}