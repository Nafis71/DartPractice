/*
A string is said to be palindrome if it remains the same on reading from
both ends. It means that when you reverse a given string,
it should be the same as the original string.
 */

bool isPalindrome(String word) {
  int start = 0;
  int end = word.length - 1;
  while (start < end) {
    if (word[start] != word[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
} //time complexity O(n)

main() {
  String word = "madam";
  if (isPalindrome(word)) {
    print("$word is a palindrome string");
  } else {
    print("$word isn't a palindrome string");
  }
}
