import 'InputError.dart';

class Area{
  late double length;
  late double width;
  late double area;

  Area.Internal(this.length,this.width) : area = length * width;

  factory Area(double length, double width){
    if(length < 0 || width < 0){
      throw InputError();
    } else{
      return Area.Internal(length, width);
    }
  }

  void display(){
    print(area);
  }

}