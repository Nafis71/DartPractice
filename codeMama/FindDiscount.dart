import 'dart:io';

double calculateDiscount(int originalPrice, int discount) {
  double discountAmount = originalPrice * (discount / 100);
  return originalPrice - discountAmount;
}

main() {
  String input = stdin.readLineSync()!;
  List<String> value = input.split(" ");
  int originalPrice = int.tryParse(value[0]) ?? 0;
  int discount = int.tryParse(value[1]) ?? 0;
  print(
      "Price: ${calculateDiscount(originalPrice, discount).toStringAsFixed(2)}");
}
