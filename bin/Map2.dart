Map<String, dynamic> getBestProduct(Map<String, dynamic> dataMap){
  Map<String, dynamic> bestProduct={};
  int? bestSellAmount = null;
  dataMap.forEach((key, value) {
    if(bestSellAmount == null){
      bestSellAmount = value;
      bestProduct.putIfAbsent(key, () => bestSellAmount);
    }
    if(value > bestSellAmount){
      bestSellAmount = value;
      bestProduct.clear();
      bestProduct.putIfAbsent(key, () => bestSellAmount);
    }
  });
  return bestProduct;
}

main(){
  Map<String, dynamic> mapOfProducts = {
    "ProductOne": 100,
    "ProductTwo": 500,
    "ProductThree": 400
  };
  print(getBestProduct(mapOfProducts));
}