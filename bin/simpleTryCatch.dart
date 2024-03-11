main(){
  List<int> myNumbers = [1,2,3,4,5];
  try{
    printList(myNumbers);
  }finally{
    print("Tonmoy");
  }

}

void printList(List<int> myNumbers){
  try{
    for(int i= 0; i<myNumbers.length; i++){
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

//just for push.

class IndexOutOfBound implements Exception{
    @override
  String toString() {
    // TODO: implement toString
    return "Index out of bound error";
  }
}
