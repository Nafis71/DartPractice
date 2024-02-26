class Student{
  late String name;
  late int id;
  int? age;
  static String instituteName = "BUBT";
  Student({required this.name, required this.id});
}

main(){
  Student studentOne = Student(name: "Tonmoy", id: 19202103008);
  print("Student Name : ${studentOne.name}");
  print("Student Id : ${studentOne.id}");
  print("Student age: ${studentOne.age ?? "unknown"}");
  print("Student Institute : ${Student.instituteName}");
  Student studentTwo = Student(name: "Rupanti", id: 19202103009);
  print("Student Name : ${studentTwo.name}");
  print("Student Id : ${studentTwo.id}");
  print("Student Institute : ${Student.instituteName}");
}