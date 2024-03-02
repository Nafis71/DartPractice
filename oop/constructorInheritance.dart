class Laptop {
  //parent class
  int price;
  String brand;
  String? _operatingSystem;

  Laptop(this.price, this.brand); //positional parameter

                      //named optional parameter
  Laptop.secondConst({required this.price, required this.brand, required String operatingSystem}){
    this._operatingSystem = operatingSystem;
  }

  String get getOperatingSystem {
    if (_operatingSystem != null) {
      return _operatingSystem!;
    }
    return "No operating system installed";
  }
}

class MACBook extends Laptop {
  //child class
  String color;

  //two way to achieve same results

  // MACBook(super.price, super.brand){
  // }
  MACBook(super.brand, super.price, this.color);

  MACBook.secondConst(
      int price, String brand, this.color, String operatingSystem)
      : super.secondConst(
            price: price, brand: brand, operatingSystem: operatingSystem);

  //this one is clean and preferable to me.

  void display() {
    print("Laptop price is ${super.price}");
    print("Laptop brand is ${super.brand}");
    print("Laptop color is ${this.color}");
    print("Laptop OS is ${super.getOperatingSystem}");
  }
}

main() {
  MACBook macBook = MACBook(100, "Apple", "Red");
  MACBook secondMacBook = MACBook.secondConst(200, "Apple", "Blue", "Mac");
  secondMacBook.display();
  //here constructor of parent class is called before the child class
  print("\n");
  macBook.display();
}
