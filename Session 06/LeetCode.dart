/*
LeetCode Question

217. Contains Duplicate
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:
Input: nums = [1,2,3,1]
Output      : true
Explanation : The element 1 occurs at the indices 0 and 3.

Example 2:
Input: nums = [1,2,3,4]
Output      :  false
Explanation :  All elements are distinct.

Example 3:
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
*/

void main() {
  print(
    Solution().twoSum([2, 5, 1, 8, 3, 4, 8, 10], 16),
  );
}

// Second Attempt
// Accepted
// 63 / 63 testcases passed
// Memory : 149.84 MB [Beats 51.86%]
// Runtime : 63 ms [Beats 37.56%]
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    print(nums.length);
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) return [i, j];
      }
    }
    return [];
  }
}


// First Attempt
// Wrong Cases
// class Solution {
//   List<int> twoSum(List<int> nums, int target) {
//     int lowIndex = 0;
//     int highIndex = nums.length - 1;
//     List<int> numbers = [];
//     numbers.addAll(nums);
//     numbers.sort();
//     do {
//       if (numbers[lowIndex] + numbers[highIndex] == target) {
//         return [
//           nums.indexOf(numbers[lowIndex]),
//           nums.indexOf(numbers[highIndex]),
//         ];
//       } else if (numbers[lowIndex] + numbers[highIndex] > target) {
//         highIndex--;
//       } else if (numbers[lowIndex] + numbers[highIndex] < target) {
//         lowIndex++;
//       }
//     } while (lowIndex != highIndex);
//     return [];
//   }
// }