import 'dart:io';

int getRemoveTileCount(int totalTiles, String tiles){
  int count = 0;
  for(int i= 0; i<totalTiles; i++){
    if(i <totalTiles-1 && tiles[i] == tiles[i+1]){
      count++;
    }
  }
 return count;
}

main(){
  int totalTiles = int.parse(stdin.readLineSync()!);
  String tiles = stdin.readLineSync()!;
  print(getRemoveTileCount(totalTiles, tiles));
}