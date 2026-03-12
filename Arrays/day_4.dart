void main() {
  /*
  Problem

  You are given stock prices for each day.

  prices = [7,1,5,3,6,4]

  You must:

  buy once

  sell once

  maximize profit

  Return the maximum profit.

  Example
  prices = [7,1,5,3,6,4]

  Best decision:

  Buy → 1
  Sell → 6
  Profit = 5

  Output

  5
   */

  /*
  Solution =>
  Approach: We will use two variables here maxProfit and minPrice. Initialize maxProfit with 0 and minPrice with the first element of
  prices array.
  Iterate through the given array:
    - compare price with current value and if the value is lower then update the minPrice with the current value.
    - for maxProfit get profit value by currentValue - minPrice if the value is greater than maxProfit then update maxProfile with
        currentValue - minPrice.

    Time complexity: Since the process will be done in a single iteration that's why time complexity will be O(n).
    Space complexity: Since we have used three variables to solve this problem: minPrice, maxProfit and value(currentValue - minPrice).
      Thus space complexity will be:
          O(1).
   */
  int maxProfit(List<int> prices) {
    int minPrice = prices[0], maxProfit = 0;

    for (final price in prices) {
      if (price < minPrice) {
        minPrice = price;
      }
      final profit = price - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
    return maxProfit;
  }

  //testing
  // print(maxProfit([7, 1, 5, 3, 6, 4]));

  /*
  Maximum Subarray

  Given:

  [-2,1,-3,4,-1,2,1,-5,4]

  Find the contiguous subarray with the largest sum.

  Output:

  6

  Because:

  [4,-1,2,1] = 6
   */

  /*
  Solution::
   Approach: We will have two variable's to solve this problem:
    sum this can be null.
    inner variable for iteration currentSum=> which will hold the result of current element addition with sum.
    => We iterate and get the number
       - if the currentSum value => sum + number (if the sum is null then use 0)
       - then compare if the currentSum is less than 0
          -> if yes set the sum to null
          -> if not set the sum to this currentSum value.
       - After the loop finishes return the sum.
   Time complexity:: O(n) since we are using single iteration to solve this problem.
   Space complexity:: O(1) since we use two variables to solve this and constant's gets cancelled.
   */

  int maxSubArray(List<int> nums) {
    int? sum = null;

    for(final num in nums) {
      final currentSum = (sum ?? 0) + num;
      if(currentSum < 0) {
        sum = null;
      } else {
        sum = currentSum;
      }
    }
    return sum ?? 0;
  }
  //testing
  print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]));
}
