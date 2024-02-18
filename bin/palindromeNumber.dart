bool isPalindrome(int number){
  if(number < 0){
    return false;
  }
  int reversed = 0;
  int temp = number;
  while(temp!=0){
    int digit = temp % 10;
    reversed = reversed * 10 + digit;
    temp ~/=10;
  }
  /*
  time complexity of this code is O(log10(number))
  The reason for this is that in the while loop,
  we're repeatedly dividing the number temp by 10 (temp ~/= 10).
  The number of iterations in the loop is proportional to the number of digits
  in the input number.
   */
  return reversed == number;
}

main(){
  int number = 212;
  if(isPalindrome(number)){
    print("$number is a palindrome number");
  } else{
    print("$number isn't a palindrome number");
  }
}