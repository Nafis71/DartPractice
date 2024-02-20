/*
Suppose, there is a class Person with two properties name and age.
The class has three constructors. The first is a parameterized constructor which
takes two parameters name and age. The second and third constructors are "named
constructors". Second constructor "fromJson" is used to create an object of the
class Person from a JSON. The third "fromJsonString" is used to create an object
of the class Person from a "JSON string".
Print the person name with a json and json string respectively
 */

import 'dart:convert';

class Person{
  late String name;
  late int age;
  Person(this.name,this.age);
  Person.fromJson(Map<String,dynamic>json){
    this.name = json['name'];
    this.age = json['age'];
  }
  Person.fromJsonString(String jsonString){
    Map<String,dynamic>json = jsonDecode(jsonString);
    this.name = json['name'];
    this.age = json['age'];
  }
}
main(){
  Map<String,dynamic> json = {
    "name":"Tonmoy",
    "age": 25
  };
  String jsonString = '{"name":"Rupanti","age":26}';
  Person personOne = Person.fromJson(json);
  Person personTwo = Person.fromJsonString(jsonString);
  print("Person one name ${personOne.name}");
  print("Person one age ${personOne.age}");
  print("Person two name ${personTwo.name}");
  print("Person two age ${personTwo.age}");
}