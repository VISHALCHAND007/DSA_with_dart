import 'dart:collection';

void main() {
  //   Problem

  //   Given an array and a target number.

  //   Return indices of two numbers that add up to target.

  // Example:

  // arr = [2,7,11,15]
  // target = 9

  /*
1. Approach: 
  - For this problem using two loops is required: One is for holding the value of each element from beginning and other one is
  traversing each element without the need of element first loop is having. 
  - Then we will get the two element and check if their sum is equal to target: 
    -> If yes break the loop and return
    -> If no, continue
2. Time complexity: Since we are using two loops here and each iteration will have O(n). Thus this solution will have O(n^2) as
time complexity.
*/

  //testing
  // final list = [2, 7, 11, 15];
  // final target = 13;
  // print(twoSum(list, target));

  //optimizing to O(n)
  /*
  1. HashMap to store the previous element (keep adding if the result is not found) where the value will be index and value will be the index
  of element
  2. Now we can traverse the list once with complexity O(n) and compare each element like: 
    -> target - current is in the hashmap: 
      - if yes, return the indexes
   */
  final newList = [5, 7, 10, 100];
  final tar = 12;
  print(twoSumOptimized(newList, tar));
}

List<int> twoSum(List<int> arr, int target) {
  final resultArr = <int>[];
  for (var i = 0; i < arr.length; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] == target) {
        resultArr.add(i);
        resultArr.add(j);
        return resultArr;
      }
    }
  }
  return resultArr;
}

List<int> twoSumOptimized(List<int> arr, int target) {
  final map = <int, int>{}; //key: number, value: index

  for (var i = 0; i < arr.length; i++) {
    if (map.containsKey(target - arr[i])) {
      return [map[target - arr[i]]!, i];
    }
    //add to map if not found
    map[arr[i]] = i;
  }
  return [];
}
