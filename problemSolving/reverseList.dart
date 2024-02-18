List<int> reverseList(List<int> listOfNumbers) {
  int start = 0;
  int end = listOfNumbers.length - 1; //two pointer approach
  while (start < end) {
    int temp =  listOfNumbers[start];
    listOfNumbers[start] = listOfNumbers[end];
    listOfNumbers[end] = temp;
    start++;
    end--;
  } //time complexity O(n);
  return listOfNumbers;
}

List<int> reverseListWithIterable(List<int> listOfNumbers) {
  return new List.from(listOfNumbers.reversed);
}

main() {
  List<int> listOfNumbers = [3, 2, 4, 7, 10, 6, 5];
  print(reverseListWithIterable(listOfNumbers));
  print(reverseList(listOfNumbers));
}
