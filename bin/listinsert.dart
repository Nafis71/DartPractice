List<String> getNewArray(List<String> arr, String newValue, int position){
  List<String> newArray = [];
  int length = arr.length;
  for(int i = 0; i < length; i++){
    if(position == i){
      newArray.add(newValue);
      newArray.add(arr[i]);
      continue;
    }
    newArray.add(arr[i]);
  }
  return newArray;
}

main(){
  List<String> arr = ["a","r","y","p","h","m","t","x"];
  String newValue = "T";
  int position = 3;
  print(getNewArray(arr, newValue, position));
}