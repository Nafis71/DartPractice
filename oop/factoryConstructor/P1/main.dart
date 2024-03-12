import 'Area.dart';

main(){
  try{
    Area area = Area(2,2);
    area.display();
    Area area2 = Area(-3,2);
    area2.display();
  }catch(error){
    print(error.toString());
  }

}