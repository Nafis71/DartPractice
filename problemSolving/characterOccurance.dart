Map<String, int> getCharacterCount(String word) {
  Map<String, int> characterMap = {};
  int stringSize = word.length;
  for (int i = 0; i < stringSize; i++) {
    if (word[i] != " ") {
      if (characterMap.containsKey(word[i])) {
        characterMap[word[i]] = (characterMap[word[i]]! + 1);
      } else {
        characterMap[word[i]] = 1;
      }
    }
  }
  return characterMap;
}

main() {
  String word = "Tonmoy";
  Map<String, int> characterMap = getCharacterCount(word);
  Map<String, int> sortedMap = Map.fromEntries(characterMap.entries.toList()
    ..sort((firstEntry, secondEntry) =>
        firstEntry.key.compareTo(secondEntry.key))); //sorting the list
  characterMap.forEach((key, value) {
    print("$key : $value");
  });
}
