var city = ["Dhaka", "Mymenshingh", "Rajshahi", "Barishal"];
var mixedList = ["Dhaka", 1200];

void main() {
  //printing all elements from city list
  print("All values: " + city.toString());

  //printing specific element from the list by it's index
  print("Specific Value : " + city[2].toString());

  //printing a set of ranged elements from the list by it's index range
  var start = 0; //starting from 0 index
  var end = 2; //ending at 2 index;

  //getting 2 values from the list which is 0 and 1 index.
  print("Ranged Values : " + city.getRange(start, end).toString());

  //getting the length of the list
  print('The length of the list: ' + city.length.toString());

  //getting first element of the list
  print("First element of the list is: " + city.first.toString());

  //getting last element of the list
  print("Last element of the list is: " + city.last.toString());

  //reversing the list
  var reversedList = city.reversed;
  print("Revered list:" + reversedList.toString());

  //removing an element from the list by value
  var modifiedList = city.remove("Dhaka");
  if (modifiedList) {
    print("Modified List: " + city.toString());
  }

  //removing an element from the list by index
  var removedValue = city.removeAt(0);
  print("Removed Value: " + removedValue);
  print("Modified List" + city.toString());

  //adding new value to the list
  city.add("Cox Bazar");
  print("New List: " + city.toString());

  //fixed list can be created by adding const/final keyword
  const constantList = ["Jamalpur", "Mirpur", "Dhanmondi"];

  //adding two lists into one
  var addedList = city + constantList;
  //or
  city.addAll(constantList);
  print("Concated List: " + addedList.toString());
  print("Concated List: " + city.toString());

  /* List add method will push the newly added value at the end of the list
     to add new value at a specific index in a list we have to use insert
     method.
   */
  city.insert(2, "Magura"); // adding one element
  city.insertAll(2, constantList); //adding another list at 2nd index
  print(city.toString());

  //updating a particular index value in a list
  city[0] = "updation";
  print(city.toString());
  //printing mixedList
  print("Mixed List: " + mixedList.toString());

  //another way of creating list in dart
  var list = List.empty(growable: true);
  list.add("Rupanti");
  print(list);
}
