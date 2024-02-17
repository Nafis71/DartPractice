/*
Given an array of n-1 distinct numbers in the range of 1 to n. Find the missing number in it.
 */

int findMissingValue(List<int> listOfNumbers){
  int naturalNumber = listOfNumbers.length + 1;
  double sum = (naturalNumber * (naturalNumber + 1)/2);
  /*
    Mathematical Approach -
    The sum of first n natural numbers = 1+2+3+4...+n = n*(n+1)/2;
     */

  for(int value in listOfNumbers){
    sum =  sum - value;
    /*
     We will keep visiting every index and subtract
     sumOfElements with each value in the index.
      */
  }
  return sum.toInt();
}

main(){
 List<int> listOfNumbers = [1,2,3,4,5,7];
 print("Missing Value: ${findMissingValue(listOfNumbers)}");
}