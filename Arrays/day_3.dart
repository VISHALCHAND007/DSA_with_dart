void main() {
  /*
  1. Given two strings:

  s
  t

  Return true if t is an anagram of s.

  Example 1
  s = "anagram"
  t = "nagaram"

  Output

  true

  Because both strings contain the same letters with same frequency.

  Example 2
  s = "rat"
  t = "car"

  Output

  false

  Because:

  rat → r:1 a:1 t:1
  car → c:1 a:1 r:1

  t is missing.
   */

  /*
  Solution ::
  Approach: We will create a hash map which will store the frequency count of each letter.
  => Then iterate the first string and increase the matching letter by 1 till the string finishes.
  => After this is done, we will use another loop and decrease the match by 1, if the letter
  doesn't already exists we will create an entry and then decrease it.

  Time complexity: Since we are using two loops here thus:
  O(n) + O(n) = O(2n) => O(n) ::Constants gets cancelled out.
  Space complexity: O(n) :: O(24*n) => O(n) ::Constants gets cancelled out.
   */

  bool isAnagram(String s, String t) {
    if(s.length != t.length) return false; // so that the if string doesn't have equal characters the it auto rejects without checking.

    final freqMap = Map<String, int>(); //map to store the frequency of each alphabet

    for(var ind = 0; ind < s.length; ind++) {
      final alphabet = s[ind].toLowerCase();
      if(freqMap.containsKey(alphabet)) {
        freqMap[alphabet] = (freqMap[alphabet] ?? 0) + 1;
      } else {
        freqMap[alphabet] = 1;
      }
    }

    for(var ind = 0; ind < t.length; ind++) {
      final alphabet = t[ind].toLowerCase();
      if(freqMap.containsKey(alphabet)) {
        freqMap[alphabet] = (freqMap[alphabet] ?? 0) - 1;
      } else {
        freqMap[alphabet] = -1;
      }
    }

    //check if all the values are 0
    print(freqMap);
    var result = true;
    freqMap.values.forEach((value) {
      if(value != 0) result = false;
    });

    return result;
  }

  //testing
  print(isAnagram("anagram", "nagaram"));
}