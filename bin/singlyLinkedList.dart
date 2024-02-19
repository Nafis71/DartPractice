late LinkedList? head = null;
late LinkedList? tail = null;

class LinkedList {
  late int _data;
  late LinkedList? _next;

  LinkedList(int data) {
    this._data = data;
    this._next = null;
  }
}

void displayData() {
  if(head == null){
    print("List is empty");
  }
  LinkedList? current = head;
  while (current != null) {
    print(current._data);
    current = current._next;
  }
}

int length() {
  if(head == null){
    return 0;
  }
  int count = 0;
  LinkedList? current = head;
  while (current != null) {
    count++;
    current = current._next;
  }
  return count;
}

void insertFirst(int value){
  LinkedList newNode = LinkedList(value);
  newNode._next = head;
  head = newNode;
  if(tail == null){
    tail = newNode;
  }
}

void insertLast(int value){
  LinkedList newNode = LinkedList(value);
  if(head == null){
    head = newNode;
    tail = newNode;
  }else{
    tail!._next = newNode;
    tail = newNode;
  }
}


main() {
  insertFirst(5);
  insertLast(6);
  displayData();
  print("Size of the linked list: ${length()}");
}
