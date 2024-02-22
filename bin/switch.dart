import 'dart:io';

main(){
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;
  switch(n){
    case 1:
      print("1st case is true");
      break;
    case 2:
      print("2nd case is true");
      break;
    case 3:
      print("3rd case is true");
      break;
    default :
      print("Wrong Input");
      break;
  } //merge
  //new changes
}
