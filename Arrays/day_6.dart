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
  Initially left = 0, maxLength = 0 and a set for storing each alphabet.
  => Iterate the the substring with variable named right: 0 -> n (length of the substring)
  => use a while loop for the removal of duplicates from the left side and increment the left by 1 for each step the condition for while loop will be:
    - till set contains the element s[right] => remove the element s[left] from the set.
  => add element to set set.add(s[right]).
  => maxLength will be:
    - the max of (r-+1) and maxLength


  Time complexity: O(n) since it takes since iteration.
  Space complexity: O(K)
   */

  int maxSubString(String s) {
    var alphaSet = Set<String>();
    var left = 0, maxLength = 0;

    for(var right = 0; right < s.length; right++) {
      //removing the duplicates from the left side
      while(alphaSet.contains(s[right])) {
        alphaSet.remove(s[left]);
        left++;
      }
      //adding the element to set of right index
      alphaSet.add(s[right]);
      //setting maxLength
      maxLength = (right - left + 1) > maxLength ? right - left + 1  : maxLength;
    }
    return maxLength;
  }
  print(maxSubString("tmmzuxt"));
}