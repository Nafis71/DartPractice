late LinkedList? head = null;
late LinkedList? tail = null;

class LinkedList {
  late int _data;
  late LinkedList? _next;

  LinkedList(this._data) {
    this._next = null;
  }
}

void displayData() {
  if (head == null) {
    print("List is empty");
  }
  LinkedList? current = head;
  while (current != null) {
    print(current._data);
    current = current._next;
  }
}

int length() {
  if (head == null) {
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

void insertFirst(int value) {
  LinkedList newNode = LinkedList(value);
  newNode._next = head;
  head = newNode;
  if (tail == null) {
    tail = newNode;
  }
}

void insertLast(int value) {
  LinkedList newNode = LinkedList(value);
  if (head == null) {
    head = newNode;
    tail = newNode;
  } else {
    tail!._next = newNode;
    tail = newNode;
  }
}

void insertAt(int value, int position) {
  LinkedList newNode = LinkedList(value);
  if (position == 1) {
    newNode._next = head;
    head = newNode;
  } else {
    LinkedList? previousNode = head;
    int count = 1;
    while (count < position - 1) {
      previousNode = previousNode?._next;
      count++;
    }
    LinkedList? current = previousNode!._next;
    newNode._next = current;
    previousNode._next = newNode;
  }
}

void deleteFirst() {
  if (head == null) {
    return;
  }
  LinkedList? nextNode = head!._next;
  head?._next = null;
  head = nextNode;
}

void deleteLast() {
  if (head == null || head?._next == null) {
    head = null;
    return;
  }
  LinkedList? current = head;
  LinkedList? secondLastNode = null;
  while (current?._next != null) {
    secondLastNode = current;
    current = current?._next;
  }
  secondLastNode?._next = null;
}

void deleteAt(int position) {
  if (head == null) {
    return;
  }
  if (position == 1 && head != null) {
    if (head?._next == null) {
      head = null;
      return;
    } else {
      head = head?._next;
      ;
      return;
    }
  }
  LinkedList? currentNode = head;
  LinkedList? previousNode = null;
  int count = 1;
  while (count < position) {
    previousNode = currentNode;
    currentNode = currentNode?._next;
    count++;
  }
  if (currentNode?._next == null) {
    previousNode?._next = currentNode?._next;
    tail = previousNode;
    return;
  }
  previousNode?._next = currentNode?._next;
}

main() {
  insertFirst(5);
  insertLast(6);
  insertLast(9);
  deleteAt(3);
  insertLast(8);
  insertLast(2);

  displayData();
  print("Size of the linked list: ${length()}");
}
