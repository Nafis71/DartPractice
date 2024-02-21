var myCitySet = <String>{'Dhaka', 'Barishal'};
Set intSet = {1,4,2,0};
main() {
  /*
  Set is the unordered collection of the different values of the same type
  It has much functionality, which is the same as array, but it is unordered,
  Set doesn't allow storing the duplicate values.
  Set must contain unique values
   */
  //printing whole set
  print(myCitySet);
  print(intSet);
  intSet.add(-1);

  // to add elements in the set
  myCitySet.add("Jamalpur");
  print(myCitySet);

  //access a specific element
  var element = myCitySet.elementAt(2);
  print(element);

  //to remove specific value from the set
  myCitySet.remove('Barishal');
  print(myCitySet);

  //to remove all elements
  myCitySet.clear();
  print(myCitySet.toString());
}
