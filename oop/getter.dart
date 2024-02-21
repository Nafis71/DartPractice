class Person{
  late String _firstName;
  late String _lastName;
  late int salary;
  Person(this._firstName,this._lastName,this.salary);
  //getters
  String get fullName{
    return "${this._firstName} ${this._lastName}";
  }
  //getter with fat arrow
  String get fullNameLambda => ("${this._firstName} ${this._lastName}");

  int get getSalary => (this.salary);
}

main(){
  Person person = Person("Nafis Hasan", "Tonmoy",70000);
  print("Name: ${person.fullNameLambda}");
  print("Salary: ${person.getSalary}");
}