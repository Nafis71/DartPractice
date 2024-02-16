List<int> moveZeroesToEnd(List<int> listOfNumbers) {
  int start = 0;
  int end = listOfNumbers.length - 1;
  while (start < end) {
    if (listOfNumbers[end] == 0) {
      end--;
      continue;
    }
    if (listOfNumbers[start] == 0) {
      int temp = listOfNumbers[end];
      listOfNumbers[end] = listOfNumbers[start];
      listOfNumbers[start] = temp;
      end--;
    }
    start++;
  }
  return listOfNumbers;
}

main() {
  List<int> listOfNumbers = [1, 0, 4, 0, 12, 44, 0, 2, 0];
  print("After Moving - ${moveZeroesToEnd(listOfNumbers)}");
}
