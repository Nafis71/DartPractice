int findMin(List<int> listOfNumbers){
  int minimumValue = listOfNumbers[0];
  for(int value in listOfNumbers){
    if(value < minimumValue){
      minimumValue = value;
    }
  } //time complexity O(n)
  return minimumValue;
}
int findMax(List<int> listOfNumbers){
  int maximumValue = listOfNumbers[0];
  for(int value in listOfNumbers){
    if(value > maximumValue){
      maximumValue = value;
    }
  } //time complexity O(n)
  return maximumValue;
}
int findMaxWithSort(List<int> listOfNumbers){
  listOfNumbers.sort();
  return listOfNumbers.last; //time complexity O(nlog n)
}
int findMinWithSort(List<int> listOfNumbers){
  listOfNumbers.sort();
  return listOfNumbers.first; //time complexity O(nlog n)
}
/*
 In terms of time complexity, findMin and findMax is more efficient,
 especially when N (the size of the list) is large.
 Sorting has a higher time complexity compared to a single pass through
 the list.
 */
void main(){
  List<int> listOfNumbers = [3, 2, 4, 7, 10, 6, 5];
  print("Finding minimum with for loop- ${findMin(listOfNumbers)}");
  print("Finding minimum with sort- ${findMinWithSort(listOfNumbers)}");
  print("Finding maximum with for loop- ${findMax(listOfNumbers)}");
  print("Finding minimum with sort- ${findMaxWithSort(listOfNumbers)}");
}