var list = List.empty(growable: true);
var set = new Set();
var mapList = new Map();

main() {
  list.add("Tonmoy");
  list.add("Rupanti");
  list.add("Abru");
  list.add("Ariba");
  set.add("Tonmoy");
  set.add("Rupanti");
  set.add("Abru");
  set.add("Ariba");
  // for in loop on list
  for (var element in list) {
    print(element);
  }


  //for in loop on set
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
