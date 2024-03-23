import 'dart:io';

int getLeftMargin(int containerWidth, int imageWidth){
  if(imageWidth < containerWidth){
    return (containerWidth - imageWidth) ~/ 2;
  }
  return 0;
}

main(){
  int containerWidth = 1000;
  int imageWidth = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(getLeftMargin(containerWidth, imageWidth));
}