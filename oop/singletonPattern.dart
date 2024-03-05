class Person{
  //privateConstructor
  Person._();
  static Person? _instance = null;
  static Person getInstance(){
    if(_instance == null){
      _instance = new Person._();
    }
    return _instance!;
  }
}

class MySingleton{
  static MySingleton? _instance = null;
  //privateConstructor
  MySingleton._();
  factory MySingleton(){
    if(_instance == null){
      _instance = MySingleton._();
    }
    return _instance!;
  }
}

main(){
  Person person = Person.getInstance();
  Person personTwo = Person.getInstance();
  print(person.hashCode);
  print(personTwo.hashCode);

  MySingleton singletonOne = MySingleton();
  MySingleton singletonTwo = MySingleton();
  print(singletonOne.hashCode);
  print(singletonTwo.hashCode);
}