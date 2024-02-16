List<int> removeEven(List<int> listOfNumbers) {
  List<int> oddList = List.empty(growable: true);
  for (int value in listOfNumbers) {
    if (value % 2 != 0) {
      oddList.add(value);
    }
  }
  return oddList;
}

main() {
  List<int> listOfNumbers = [3, 2, 4, 7, 10, 6, 5];
  print(removeEven(listOfNumbers));
}
