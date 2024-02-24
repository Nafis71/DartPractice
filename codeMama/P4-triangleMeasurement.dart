import 'dart:io';

int getArea(int base,int height){
  return (0.5 * base *height).toInt();
}

main(){
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");
  int base = int.tryParse(values[0]) ?? 0;
  int height = int.tryParse(values[1]) ?? 0;
  print(getArea(base, height));

}