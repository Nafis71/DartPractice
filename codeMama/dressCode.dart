import 'dart:io';

String getSuggestion(String dressCode, int temperature){
  if(dressCode == 'casual' && temperature >= 15 && temperature <= 25){
    return "Jeans and a light jacket.";
  } else if(dressCode == 'festive' && temperature > 25){
    return "Colorful dress and sandals.";
  } else {
    return "Wear what you're comfortable in.";
  }

}

main(){
  String dressCode = stdin.readLineSync()!;
  int temperature = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(getSuggestion(dressCode, temperature));
}