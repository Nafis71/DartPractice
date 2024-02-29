class Person{
  late String name;
  late int age;
  late String _gender;

  void display(){
    //for overriding
  }

  String get getGender => (this._gender);
  void set setGender(String gender) => (this._gender = gender);
}
class Student extends Person{
  String schoolName;
  int rollNumber;
  Student(String name, int age, this.schoolName, this.rollNumber, String gender){
    super.name = name;
    super.age = age;
    super.setGender = gender;
  }

  @override
  void display(){
    print("Student's Name: ${super.name}");
    print("Student's Age: ${super.age}");
    print("Student's School Name: ${schoolName}");
    print("Student's Roll Number: ${rollNumber}");
    print("Student's Gender: ${super.getGender}");
  }
}
main(){
  Student personOne = Student("Tonmoy", 25, "BUBT", 19202103008, "Male");
  personOne.display();
}