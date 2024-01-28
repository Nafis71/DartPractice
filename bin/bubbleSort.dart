
var array = [1, 5, 9, 10, 2, 4, 3];

List<int> bubbleSort(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array.length - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}

main() {
  print("Before Sorted: ${array}");
  print("After Sorted: ${bubbleSort(array)}");

  //it has a total time complexity of O(n-square);
}
