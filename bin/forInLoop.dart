var list = List.empty(growable: true);
var set = new Set();
var mapList = new Map();

main() {

  /*
  Note :
  for loop and for in loop  is also called
  entry controlled loop.
  and while and do while loop is exit controlled loop.
   */
  list.add("Tonmoy");
  list.add("Rupanti");
  list.add("Abru");
  list.add("Ariba");

  // for in loop on list
  for (var element in list) {
    print(element);
  }


  //for in loop on set
  set.add("Tonmoy");
  set.add("Rupanti");
  set.add("Abru");
  set.add("Ariba");
  for (var setElement in set) {
    print(setElement);
  }

  //for in loop on Json array
  var productList = [
    {'name': 'pen', 'price': 10},
    {'name': 'soap', 'price': 100},
    {'name': 'book', 'price': 120},
    {'name': 'medicine', 'price': 30}
  ];
  for(var product in productList){
    print("Product name: ${product['name']} and price is ${product['price']} tk");
  }
}
