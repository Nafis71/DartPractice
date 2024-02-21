class Person{
  late String name;
  late int age;
  int salary = 0;
  //getters
  String get getName => (this.name);
  int get getAge => (this.age);
  int get getSalary => (this.salary);
  //setters
  void set setSalary(int salary) => (this.salary = salary);
  void set setName(String name) => (this.name = name);
  void set setAge(int age) => (this.age = age);
}

main(){
  Person person = Person();
  person.setName = "Tonmoy";
  person.setAge = 25;
  person.setSalary = 70000;
  print("Person's Name: ${person.getName}");
  print("Person's Name: ${person.getAge}");
  print("Person's Name: ${person.getSalary}");
}