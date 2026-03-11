void main() {
  //1. 🧠 Problem 1 — Valid Palindrome
  //
  // First let’s understand the idea.
  //
  // What is a palindrome?
  //
  // A string that reads the same forward and backward.
  //
  // Examples:
  //
  // racecar
  // madam
  // level
  //
  // Not palindrome:
  //
  // hello
  // flutter
  // 📘 The Problem
  //
  // Given a string s, determine if it is a palindrome.
  //
  // Ignore:
  //
  // spaces
  //
  // punctuation
  //
  // uppercase/lowercase differences
  //
  // Example 1
  // Input:
  // "A man, a plan, a canal: Panama"
  //
  // Output:
  // true
  //
  // Because after cleaning:
  //
  // amanaplanacanalpanama
  //
  // which is a palindrome.
  //
  // Example 2
  // Input:
  // "race a car"
  //
  // Output:
  // false

  //Approach: I will first clean the string to remove symbols, spaces and anything besides alphabets.
  ///Then using the two pointer approach traverse the cleaned string from index 0 and cleaned string length -1
  ///first check if the ind1 == ind2 break, set result to true and return
  ///if at any given point the string gives false for value cleanedStr[ind1] != cleanedString[ind2] break and return false
  ///for cleanedString[ind1] == cleanedString[ind2] => set ind1 = ind1+1 and ind2 = ind2-1

  /// Time complexity: Since two loops are required here one is to keep clean the string and one is for checking if the cleaned string
  /// is palindrome or not. => O(n) + O(n)??

  bool isPalindrome(String s) {
    var cleanedStr = StringBuffer();
    
    //clean the string
    final str = s.toLowerCase();
    for(var i = 0; i< str.length; i++) {
      final alphabet = str[i];
      if(RegExp(r'[a-z]').hasMatch(alphabet)) {
        cleanedStr.write(alphabet);
      }
    }
    final newStr = cleanedStr.toString();

    var ind1 = 0;
    var ind2 = newStr.length-1;

    // for(var i =0; i < newStr.length; i++) {
    //   if(ind1 == ind2) {
    //     return true;
    //   } else if(newStr[ind1] == newStr[ind2]) {
    //     ind1++;
    //     ind2--;
    //     continue;
    //   } else {
    //     break;
    //   }
    // }

    //new
    while(ind1 < ind2) {
      if(newStr[ind1] != newStr[ind2]) {
        return false;
      }
      ind1++;
      ind2--;
    }
    return true;
  }
  ///testing
  // print(isPalindrome("race a car"));

  // 🚀 Next (Day 2 – Problem 2)
  //
  // Now let's do:
  //
  // Contains Duplicate
  //
  // Implement:
  //
  // bool containsDuplicate(List<int> nums)
  //
  // Example:
  //
  // [1,2,3,1] → true
  // [1,2,3,4] → false

  /*
  Approach => We will use a set here which will be used to store unique elements, also it has a time complexity of O(1) for peek/ contains
  operation for faster lookups.
  1. iterate through each element of the array
  2. check if the elements exists in the set, if yes => return true
  3. if the element doesn't exists in the set add it.
  4. continue

  Time complexity => Since the approach requires a since loop thus the time complexity will be O(n) for this solution.
   */
  bool containsDuplicate(List<int> numbers) {
    final lookupSet = Set<int>();

    for(var i=0; i< numbers.length; i++) {
      if(lookupSet.contains(numbers[i])) {
        return true;
      }
      lookupSet.add(numbers[i]);
    }
    return false;
  }

  //testing:
  print(containsDuplicate([1,2,3,4]));
}