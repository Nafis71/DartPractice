List<int> moveZeroesToEnd(List<int> listOfNumbers) { //two pointers approach
  int start = 0;
  int end = listOfNumbers.length - 1;
  while (start < end) {
    if (listOfNumbers[end] == 0) {
      end--;
      continue;
    }
    if (listOfNumbers[start] == 0) {
      int temp = listOfNumbers[end];
      listOfNumbers[end--] = listOfNumbers[start];
      listOfNumbers[start] = temp;
    }
    start++;
  } //time complexity O(n);
  return listOfNumbers;
}

main() {
  List<int> listOfNumbers = [1, 0, 4, 0, 12, 44, 0, 2, 0];
  print("After Moving - ${moveZeroesToEnd(listOfNumbers)}");
}
