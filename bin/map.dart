var student = {
  "name": "Nafis Hasan Tonmoy",
  "age": 25,                    //All keys in the map must be unique
  "dept": "CSE"
};

main() {
  //printing all elements in map
  print("All Values : " + student.toString());

  //printing specific key in map
  print("Student's Name: "+ student['name'].toString());
  print("Student's age: "+ student['age'].toString());

  //printing the length of the map
  var length = student.length;
  print("Length of the map: "+ length.toString());

  //check if the map is empty or not
  if(student.isEmpty){
    print("The map is empty");
  } else {
    print("The map is not empty");
  }
}
