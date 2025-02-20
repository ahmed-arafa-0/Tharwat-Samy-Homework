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
    Solution().containsDuplicate(
      [
        1,
        1,
        1,
        3,
        3,
        4,
        3,
        2,
        4,
        2,
      ],
    ),
  );
}

// Third Attempt
// Accepted
// 76 / 76 testcases passed
// Memory : 178.4 MB
// Runtime : 12 ms
class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numList = {};
    for (var item in nums) {
      if (numList.contains(item)) {
        return true;
      }
      numList.add(item);
    }
    return false;
  }
}

// Second Attempt
// Time Limit Exceeded
// 75 / 76 testcases passed
// Memory : N/A
// Runtime : N/A
/*
class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          return true;
        }
      }
    }
    return false;
  }
}
*/

// First Attempt
// Time Limit Exceeded
// 75 / 76 testcases passed
// Memory : N/A
// Runtime : N/A
/*
class Solution {
  bool containsDuplicate(List<int> nums) {
  bool isFound = false;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        isFound = true;
        return isFound;
      }
    }
  }
  return isFound;
  }
}
*/
