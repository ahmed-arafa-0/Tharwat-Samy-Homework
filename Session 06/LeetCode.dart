/*
LeetCode Question

1. Two Sum

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

Example 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:
Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:
Input: nums = [3,3], target = 6
Output: [0,1]
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