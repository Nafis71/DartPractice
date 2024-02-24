import 'dart:io';

int getMinimum(int x , int y, int z){
  if(x < y && x < z){
    return x;
  } else if(y<x && y< z){
    return y;
  } else{
    return z;
  }
}
main(){
  int x, y, z;
  String input = stdin.readLineSync()!;
  List<String> values = input.split(' ');
  x = int.parse(values[0]);
  y = int.parse(values[1]);
  z = int.parse(values[2]);
  print(getMinimum(x, y, z));
}