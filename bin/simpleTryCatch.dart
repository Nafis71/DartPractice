main(){
  List<int> myNumbers = [1,2,3,4,5];
  try{
    printList(myNumbers);
  } on IndexOutOfBound{

  }
  finally{
    print("Exception Handled");
  }

}

void printList(List<int> myNumbers){
  try{
    // anotherFunction();
    for(int i= 0; i<myNumbers.length+3; i++){
      print(myNumbers[i]);
    }

  }finally{
    myNumbers = [];
    print("List is empty");
  }
}
void anotherFunction(){
  throw IndexOutOfBound();
}

//just for push.

class IndexOutOfBound implements Exception{
    @override
  String toString() {
    // TODO: implement toString
    return "Index out of bound error";
  }
}
