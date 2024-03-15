void displayFruitDetails(List<Map<String, dynamic>> fruits){
  print("Original Fruit Details before Discount:");
  for(Map<String,dynamic> fruit in fruits){
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, int discount){
  print("Fruit Details After Applying 10% Discount:");
  for(Map<String,dynamic> fruit in fruits){
    double fruitPrice = fruit['price'];
    double discountedPrice = fruitPrice - (fruitPrice * (discount/100));
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$$discountedPrice");
  }
}

main() {
  List<Map<String, dynamic>> fruits = [
    { "name": "Apple", "color": "Red", "price": 2.5},
    { "name": "Banana", "color": "Yellow", "price": 1.0},
    { "name": "Grapes", "color": "Purple", "price": 3.0}
  ];
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10);
}
