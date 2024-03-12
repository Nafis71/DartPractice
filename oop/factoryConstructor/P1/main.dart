import 'Area.dart';

main(){
  try{
    Area area = Area(2,2);
    area.display();
    print(area.hashCode);
  }catch(error){
    print(error.toString());
  }finally{
    Area area2 = Area(3,2);
    area2.display();
    print(area2.hashCode);
  }

}