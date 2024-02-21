class Laptop{  //parent class
  int price;
  String brand;
  Laptop(this.price, this.brand);
}
class MACBook extends Laptop{  //child class
  String color;
  //two way to achieve same results

  // MACBook(super.price, super.brand){
  //   print("Mac book constructor");
  // }
  MACBook(int price, String brand,this.color): super(price,brand);
  //this one is clean and preferable to me.

  void display(){
    print("Laptop price is ${super.price}");
    print("Laptop brand is ${super.brand}");
    print("Laptop color is ${this.color}");
  }
}
main(){
  MACBook macBook = MACBook(100,"Apple", "Red");
  //here constructor of parent class is called before the child class
  //
  macBook.display();
}