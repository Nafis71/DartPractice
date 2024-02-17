List<String> getAscendingSortedString(List<String> listOfStrings) {
  return listOfStrings..sort((String firstString, String secondString) =>
      firstString.compareTo(secondString)); // lambda  function as comparator;
}
/*
above function compares two strings (firstString and secondString) using the compareTo method,
which is the standard string comparison method in Dart.
The compareTo method returns a negative value if the first string is
lexicographically(dictionary) less than the second string, a positive value if it is greater,
and 0 if the strings are equal.
 */
List<String> getDescendingSortedString(List<String> listOfStrings) {
  return  listOfStrings..sort((String firstString, String secondString) =>
      secondString.compareTo(firstString)); // lambda  function as comparator;;
}


void main() {
  List<String> listOfStrings = ["Tonmoy", "Rupanti", "Ariba"];
  print("Sorted in ascending order: ${getAscendingSortedString(listOfStrings)}");
  print("Sorted in descending order: ${getDescendingSortedString(listOfStrings)}");
}
