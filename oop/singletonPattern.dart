class Person{
  Person._(){
    //private constructor is needed.
  }
  static Person? instance = null;
  static Person getInstance(){
    if(instance == null){
      instance = new Person._();
    }
    return instance!;
  }
}
main(){
  Person person = Person.getInstance();
  Person personTwo = Person.getInstance();
  print(person.hashCode);
  print(personTwo.hashCode);
}