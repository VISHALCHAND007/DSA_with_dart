void main() {
  /*
  Maximum Subarray

    You already reasoned about it yesterday, but today the goal is to write the final clean solution.

    Problem

    Given an integer array nums, find the contiguous subarray with the largest sum and return its sum.

    Example:

    Input
    [-2,1,-3,4,-1,2,1,-5,4]

    Output
    6

    Best subarray:

    [4,-1,2,1]
   */

  /*
  Approach::
  For this solution to work we will use two variables:
   1. to store the maximum sum : maxSum
   2, to store the sum of element till now: sum
   => Initially we will store the first element of the list in both the variables.
   => Iterate the list and get the sum till now, if the sum is greater than the maximum sum replace the maxSum with sum.
   => If the sum is < 0: replace the sum with 0.
   => return the maxSum after the loop finishes.

   Time complexity:: O(n) : since the process is done in a single loop.
   Space complexity:: O(1)
   */
  int maxSubArray(List<int> nums) {
    int maxSum = nums[0], sum = nums[0];

    for(var i = 1; i < nums.length; i++) {
      sum += nums[i];

      if(maxSum < sum) maxSum = sum;

      if(sum < 0) sum = 0;
    }
    return maxSum;
  }

  // print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]));

  /*
  Move Zeroes::

    Problem:

    Input
    [0,1,0,3,12]

    Output:

    [1,3,12,0,0]

    Rules:

    Move all 0s to the end

    Maintain relative order of non-zero elements

    Modify the array in place
   */

  /*
  Approach::
  To solve this we will use a pointer:
  => this pointer will initially be first element of the list.
  => but this will denote the safe position to insert the non zero element.

  Sol:: Start by initializing a variables positionInd = 0
  =>  Iterate the given list
  => Check if the given number/element is not 0, if yes then replace the element with the element at index positionInd
  and increment the positionInd by 1.
  => return the list at the end.

  Time complexity:: O(n) (done in a single loop)
  Space complexity:: O(1)
   */

  List<int> moveZeroes(List<int> nums) {
    int insertInd = 0;
    for(var i = 0; i < nums.length; i++) {
      if(nums[i] != 0) {
        //swap
        final temp = nums[i];
        nums[i] = nums[insertInd];
        nums[insertInd] = temp;

        insertInd++;
      }
    }
    return nums;
  }
  print(moveZeroes([0,0,1,0,2,0,3]));

}