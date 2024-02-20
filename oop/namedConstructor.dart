import 'dart:io';
class Person {
  late String? name;
  late int age;
  late int salary;

  Person([this.age = 0, this.name = null, this.salary = 0]) {
    //this is default constructor;
  }

  Person.secondConstructor(String name, int age, [this.salary = 0]) {
    this.name = name;
    this.age = age;
  }

  String? get getName {
    return name;
  }

  int get getAge {
    return age;
  }

  int get getSalary {
    return salary;
  }

  set setSalary(int salary) {
    this.salary = salary;
  }
}

main() {
  print("Enter Person's Name: ");
  String name = stdin.readLineSync()!;
  print("Enter Person's Age : ");
  int age = int.tryParse(stdin.readLineSync()!) ?? 0;
  Person secondPerson = Person.secondConstructor(name, age);
  print("Enter Person's Salary: ");
  secondPerson.setSalary = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Person's Name: ${secondPerson.getName}");
  print("Person's Age : ${secondPerson.getAge}");
  print("Person's Salary: ${secondPerson.getSalary}");
}
