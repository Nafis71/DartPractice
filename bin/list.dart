var city = ["Dhaka", "Mymenshingh", "Rajshahi", "Barishal"];
var mixedList = ["Dhaka",1200];

void main() {
  //printing all elements from city list
  print("All values: "+city.toString());

  //printing specific element from the list by it's index
  print("Specific Value : "+city[2].toString());

  //printing a set of ranged elements from the list by it's index range
  var start = 0; //starting from 0 index
  var end = 2; //ending at 2 index;

  //getting 2 values from the list which 0 and 1 index.
  print("Ranged Values : " + city.getRange(start, end).toString());

  //getting the length of the list
  print('The length of the list: ' + city.length.toString());

  //printing mixedList
  print("Mixed List: "+ mixedList.toString());
}
