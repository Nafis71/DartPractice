class LinkedList{
  late int _data;
  late LinkedList? _next;
  LinkedList(int data){
    this._data = data;
    this._next = null;
  }
  void displayData(){
    LinkedList? current = this;
    while(current != null){
      print(current._data);
      current = current._next;
    }
  }
}
main(){
  LinkedList head = LinkedList(11);
  LinkedList second = LinkedList(15);
  LinkedList third = LinkedList(18);
  LinkedList fourth =LinkedList(30);
  head._next = second;
  second._next = third;
  third._next = fourth;
  head.displayData();
}