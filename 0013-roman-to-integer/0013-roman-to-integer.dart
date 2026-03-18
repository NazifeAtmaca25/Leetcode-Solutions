class Solution {
  int romanToInt(String s) {
     final Map<String, int> romans = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int sum = 0;
    for (int i = 0; i < s.length; i++) {
      String currentChar = s[i];
      int value = romans[currentChar]!;
      
      if (i + 1 < s.length) {
        String nextChar = s[i + 1];
        int nextValue = romans[nextChar]!;

        if (value < nextValue) {
          sum += nextValue - value;
          i++; 
        } else {
          sum += value;
        }
      } else {
        sum += value;
      }
    }

    return sum;
  }
}