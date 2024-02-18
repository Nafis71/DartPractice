/*
FizzBuzz is a common coding task given during interviews that
tasks candidates to write a solution that prints integers one-to-N,
labeling any integers divisible by three as “Fizz,” integers divisible
by five as “Buzz” and integers divisible by both three and five as “FizzBuzz.”
 */

void checkFizzBuzz(List<int> numberList) {
  for (int number in numberList) {
    if (number % 3 == 0 && number % 5 == 0) {
      print("$number is FizzBuzz");
    } else if (number % 3 == 0) {
      print("$number is Fizz");
    } else if (number % 5 == 0) {
      print("$number is Buzz");
    } else {
      print("$number");
    }
  } //time Complexity O(n)
}

main() {
  List<int> numberList = [19, 25, 37, 27, 35];
  checkFizzBuzz(numberList);
}
