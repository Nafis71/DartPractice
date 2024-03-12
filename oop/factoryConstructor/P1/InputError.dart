class InputError implements Exception{
  @override
  String toString() {
    // TODO: implement toString
    return "Length and width must be higher or equal than 0";
  }
}