import 'dart:io';

int getMinimum(int x , int y, int z){
  if(x > y && x> z){
    return x;
  } else if(y>x && y> z){
    return y;
  } else{
    return z;
  }
}
main(){
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  int z = int.parse(stdin.readLineSync()!);
  print(getMinimum(x, y, z));
}