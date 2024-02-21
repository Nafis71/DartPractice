/*
Create a class Customer with three properties: name, age, and phone.
The class should have one constant constructor.
The constructor should initialize the values of the three properties.
Create an object of the class Customer and print the values of the three properties.
 */
class Customer{
  final String name;
  final int age;
  final int phone;
  const Customer({required this.name, required this.age, required this.phone});
  String get getName{
    return name;
  }
  int get getAge{
    return age;
  }
  
  int get getPhone{
    return phone;
  }
}

main(){
  Customer customer = Customer(name: "Tonmoy", age: 25, phone: 01963849939);
  print("Customer's Name: ${customer.getName}");
  print("Customer's Age: ${customer.getAge}");
  print("Customer's Phone: ${customer.getPhone}");
}