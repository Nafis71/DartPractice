import 'forInLoop.dart';

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

  //adding new key to the map
  student['University'] = "Bubt";
  print(student);

  //creating map with constructor;
  var person = new Map(); //  or typecasting - Map<String,String> person =  new Map();

  //adding key and value to the map
  person.putIfAbsent("name", () => "Tonmoy");
  person.putIfAbsent("age", () => 24);

  //adding student map in person map

  /*
  if we add map a to map b then all duplicate keys of map b will be
  replaced by map a's key and value pair.
  Here map a is student and map b is person.
   */
  person.addAll(student);
  print(person);

  //to remove specific key from map;
  person.remove("age");
  print(person);


  //clear map
  person.clear();
  print(person);

  var myMap ={
    'Name':[{'name':'Dhaka','Age':19},{'name':'Barishal','Age':21}],
    'Age':19,
    'city':'Manikganj'
  };
  var mapList = myMap['Name'] as List;
  print(mapList[1]['name']);
  for(var name in mapList){
     print(name['name']);
  }
}
