main(){
  List<int> myNumbers = [1,2,3,4,5];
  try{
    printList(myNumbers);
  } on IndexOutOfBound catch (e){
    print(e.toString());
  }catch(e){
    print(e.toString());
  }

}

void printList(List<int> myNumbers){
  try{
    for(int i= 0; i<10; i++){
      print(myNumbers[i]);
    }
  } catch(e){
    throw IndexOutOfBound();
    // print(e.toString());

  } finally{
    myNumbers = [];
    print("List is empty");
  }
}

class IndexOutOfBound implements Exception{
    @override
  String toString() {
    // TODO: implement toString
    return "Index out of bound error";
  }
}
