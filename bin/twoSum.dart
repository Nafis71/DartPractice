List<int> twoSum(List<int> nums, int target){
  Map<int, int> numMap = {};
  int n = nums.length;
  for (int i = 0; i < n; i++) {
    int complement = target - nums[i];
    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }
    numMap[nums[i]] = i;
  }
  return [];
} //time complexity O(n);
/*
efficient approach is to use a hash table / map.
We can iterate through the array once, and for each element,
check if the target minus the current element exists in the hash table.
If it does, we have found a valid pair of numbers.
If not, we add the current element to the hash table.
 */
main(){
 List<int> nums =[2,5,5,11];
 int target = 10;
 print(twoSum(nums, target));
}