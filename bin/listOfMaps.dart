main(){
  List<Map<String,dynamic>> productList =[
    {"name":"Keya Shaban","price":80},
    {"name":"Matador Pen","price":10},
    {"name":"Star Ship","price":30}
  ];
  print("Before Sorting : $productList");
  productList.sort((firstMap,secondMap) => firstMap['price'].compareTo(secondMap['price']));
  print("After Sorting : $productList");
}