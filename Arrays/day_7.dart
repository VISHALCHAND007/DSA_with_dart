void main() {
  /*
  1. Given an arr[] of elements of size n, return the largest element given in the array.

    Examples:

    Input: arr[] = [10, 20, 4]
    Output: 20
    Explanation: Among 10, 20 and 4, 20 is the largest.

    Input: arr[] = [20, 10, 20, 4, 100]
    Output: 100
   */

  /*
  Solution:
  Approach:
  => store the first element as the largest.
  => start traversing the array and check each element is greater than the largest or not
    - if the element is greater than the largest then replace the largest with that element
  => return the largest at the end.

  Time complexity: O(n)
  Space complexity: O(1)
   */

  int largestElement(List<int> arr) {
    var largest = arr[0];
    for(var ind = 0; ind < arr.length; ind++) {
      if(arr[ind] > largest) {
        largest = arr[ind];
      }
    }
    return largest;
  }

  // print(largestElement([24, 3, 4, 23232, 2567]));

  /*
  2. Given an array of positive integers arr[] of size n, the task is to find second largest distinct element in the array.

    Note: If the second largest element does not exist, return -1.

    Examples:

    Input: arr[] = [12, 35, 1, 10, 34, 1]
    Output: 34
    Explanation: The largest element of the array is 35 and the second largest element is 34.

    Input: arr[] = [10, 5, 10]
    Output: 5
    Explanation: The largest element of the array is 10 and the second largest element is 5.

    Input: arr[] = [10, 10, 10]
    Output: -1
    Explanation: The largest element of the array is 10 there is no second largest element.
   */

  /*
  Solution:

  Approach::
  We will initially have two variables named largest and sLargest, the largest will store arr[0] and sLargest will store -1, so that if no second largest is
  found it will return -1.
  => Traverse the given array from index 1 till end and check:
    - if arr[ind] is greater than largest
      -> if yes sLargest will take largest and largest will take this arr[ind] value.
     - if arr[ind] is less than largest but is greater than the sLargest
        -> sLargest will take this value
   => return the sLargest at the end.

   Time complexity: O(n) since we are looping once
   Space complexity: O(2) since we are using two variables to solve the problem.
   */

  int secondLargest(List<int> arr) {
    var largest = arr[0], sLargest = -1;

    for(var ind = 1; ind < arr.length; ind++) {
      if(arr[ind] > largest) {
        sLargest = largest;
        largest = arr[ind];
      } else if(arr[ind] < largest && arr[ind] > sLargest) {
        sLargest = arr[ind];
      }
    }
    return sLargest;
  }
  // print(secondLargest([10, 5, 10]));

  /*
  3. Given an array arr[], check whether it is sorted in non-decreasing order. Return true if it is sorted otherwise false.

    Examples:

    Input: arr[] = [10, 20, 30, 40, 50]
    Output: true
    Explanation: The given array is sorted.
    Input: arr[] = [90, 80, 100, 70, 40, 30]
    Output: false
    Explanation: The given array is not sorted.

    Solution:
    => Approach:: Simply check if the array is empty first. If yes return false {assuming that the empty array is not sorted or we can't predict}
    Now traverse the list from 1 to n and check:
      - is the arr[i] element greater than equal to arr[i-1]
      - else return false
    At the end of the loop return true.
    => Time complexity: O(n) since we are traversing once.
    => Space complexity: O(1)
   */

  bool isSorted(List<int> arr) {
    for(var ind = 1; ind < arr.length; ind++) {
      if(arr[ind] >= arr[ind-1]) {
        continue;
      } else {
        return false;
      }
    }
    return true;
  }
  // print(isSorted([90, 80, 100, 70, 40, 30]));

  /*
  4.Remove duplicates from Sorted Array

    Given a sorted array arr[] of size n, the goal is to rearrange the array so that all distinct elements appear at the beginning in sorted order. Additionally, return the length of this distinct sorted subarray.

    Note: The elements after the distinct ones can be in any order and hold any value, as they don't affect the result.

    Examples:

    Input: arr[] = [2, 2, 2, 2, 2]
    Output: [2]
    Explanation: All the elements are 2, So only keep one instance of 2.

    Input: arr[] = [1, 2, 2, 3, 4, 4, 4, 5, 5]
    Output: [1, 2, 3, 4, 5]

    Input: arr[] = [1, 2, 3]
    Output: [1, 2, 3]
    Explanation : No change as all elements are distinct.

    Solution:
    => Approach: For this problem we will use two pointer approach:
      - First pointer to store the index 0.
      - Second pointer to traverse the list/array from position 1 to n. n => size for the list/array
     While traversing we will check if the arr[j] != arr[i], if true arr[i+1] = arr[j], i++.
     At the last we will have the final list with all the unique elements in range 0 -> i+1. return the sub-array in this range.
     => Time complexity: O(n)
     => Space complexity: O(1)
   */

  List<int> findUniqueElement(List<int> arr) {
    if(arr.isEmpty) return [];

    var i = 0; //first index
    for(var j = 1; j < arr.length; j++) {
      if(arr[j] != arr[i]) {
        arr[i+1] = arr[j];
        i++;
      }
    }
    return arr.sublist(0, i+1);
  }
  print(findUniqueElement([1, 2, 3]));
}