void main() {
  /*
  Longest Substring Without Repeating Characters::
    Problem

    Given a string s, find the length of the longest substring without repeating characters.

    Example:

    Input:
    "abcabcbb"

    Output:
    3


    Because the longest substring is:

    "abc"

    Example 2
    Input:
    "bbbbb"

    Output:
    1


    Longest substring:

    "b"

    Example 3
    Input:
    "pwwkew"

    Output:
    3


    Longest substring:

    "wke"
   */

  /*
  Approach:
  To solve this we will use two pointer approach:
  We need two variable to store the first two indexes & a variable to store the max substring frequency.
  => Iterate the given string.
  => For each iteration check if the alphabet at ind1 and ind2 are same or not is they are not same increate a local counter
   variable by 1 till the duplicate is found.
   => Update the ind2 at each step.
   => If a duplicate is found then update the max with that local variable if its greater than max.
   => Update the ind1 by 1.
  => Return the max value when the loop finishes.

  Time complexity: O(n) since it takes since iteration.
  Space complexity: O(1)
   */

  int maxSubString(String s) {
    int maxFreq = 0;
    int ind1 = 0;

    for(var i = 0; i < s.length; i++) {

    }
    return maxFreq;
  }
}