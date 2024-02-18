import 'dart:math';

String longestCommonPrefix(List<String> listOfStrings) {
  String commonString = "";
  listOfStrings.sort((firstString,secondString)=> firstString.compareTo(secondString));
  String first = listOfStrings[0];
  String last = listOfStrings[listOfStrings.length - 1];
  int minimumStringLength = min(first.length, last.length);
  for (int i = 0; i < minimumStringLength; i++) {
    if (first[i] != last[i]) {
      return commonString;
    } else {
      commonString += first[i];
    }
  } //time Complexity O(nlog(n))
  return commonString;
}

main() {
  List<String> listOfStrings = ["flower","flow","flight"];
  print(longestCommonPrefix(listOfStrings));
}
