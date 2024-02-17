Map<String,dynamic> getSortedMapByKey(Map<String, dynamic> mapOfProducts){
  Map<String, dynamic> sortedMap = Map.fromEntries(mapOfProducts.entries.toList()
    ..sort((firstEntry,secondEntry)=> firstEntry.key.compareTo(secondEntry.key)));
  return sortedMap;
}
/*
"mapOfProducts.entries": Gets the set of key-value pairs (entries) from the original map.

"toList()": Converts the set of entries into a list. This is necessary because the sort method operates on a list, not a set.

"..sort((firstEntry, secondEntry) => firstEntry.key.compareTo(secondEntry.key))": Uses the cascade (..) operator to apply the sort method to the list of entries.
The sort method is provided with a comparator function that compares the keys of the map entries, sorting them in ascending order.

"Map.fromEntries(...)": Finally, creates a new map (sortedMap) using the sorted list of entries.
 */
Map<String,dynamic> getSortedMapByValue(Map<String,dynamic> mapOfProducts){
  Map<String,dynamic> sortedMap = Map.fromEntries(mapOfProducts.entries.toList()
    ..sort((firstEntry,secondEntry) => firstEntry.value.compareTo(secondEntry.value)));
  return sortedMap;
}

void main(){
  Map<String, dynamic> mapOfProducts = {"ProductOne": 100,"ProductTwo": 50,"ProductThree":40};
  print("Sorting a map by its key: ${getSortedMapByKey(mapOfProducts)}");
  print("Sorting a map by its value: ${getSortedMapByValue(mapOfProducts)}");
}