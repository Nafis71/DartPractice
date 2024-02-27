import 'enum.dart';
import 'Person.dart';
/*
In Dart, an enum (short for enumeration) is a special kind of data type
that represents a set of constant values. Enums are used to define a collection
of related constants, often representing a finite set of options or states.
They provide a way to create named values for specific cases, making the code
more readable and less error-prone.
 */
main(){
  print("All the values of days enum : ${Days.values}");
  Days day = Days.Saturday;
  print("Specific value of days enum : ${day.name}");
  Person personOne = Person("Tonmoy", Gender.Male);
  Person personTwo = Person("Nubla", Gender.Female);
  print("1st Person's Gender : ${personOne.gender.name}");
  print("2nd Person's Gender : ${personTwo.gender.name}");
}