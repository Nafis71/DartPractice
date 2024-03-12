import 'InputError.dart';

class Area{
  late double length;
  late double width;
  late double area;
  static Area? instance = null;

  Area.Internal(this.length,this.width) : area = length * width;

  factory Area(double length, double width){
    if(length < 0 || width < 0){
      throw InputError();
    } else{
      if(instance == null){
        print("GOing");
        instance = Area.Internal(length, width);
      }
      return instance!;
    }
  }

  void display(){
    print(area);
  }

}