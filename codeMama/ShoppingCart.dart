import 'dart:io';

int getTotalPrice(int productCode, int productQuantity) {
  Map<int, int> productPriceList = {
    101: 10,
    202: 25,
    303: 5,
  };
  return productPriceList[productCode]! * productQuantity;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> value = input.split(" ");
  int productCode = int.tryParse(value[0]) ?? 0;
  int productQuantity = int.tryParse(value[1]) ?? 0;
  print(getTotalPrice(productCode, productQuantity));
  //sdsds
}
