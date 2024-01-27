var city = ["Dhaka","Mymenshingh","Rajshahi","Barishal"];

void main(){
  //printing all elements from city list
  print(city);

  //printing specific element from the list by it's index
  print(city[2]);

  //printing a set of ranged elements from the list by it's index range
  var start = 0; //starting from 0 index
  var end = 2;  //ending at 2 index;

  //getting 2 values from the list which 0 and 1 index.
  print(city.getRange(start, end));
}