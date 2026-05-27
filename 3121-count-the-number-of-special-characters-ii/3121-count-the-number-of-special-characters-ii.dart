class Solution {
  int numberOfSpecialChars(String word) {
    int count = 0;
    List<String> alphabet = [];
    List<String> wrong = [];
    
    Map<String, int> upperFirstIndex = {};
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (char == char.toUpperCase() && char != char.toLowerCase()) {
        if (!upperFirstIndex.containsKey(char)) {
          upperFirstIndex[char] = i;
        }
      }
    }

    for (int i = 0; i < word.length; i++) {
        if (word[i] == word[i].toLowerCase() && word[i] != word[i].toUpperCase()) {
            
            String upperChar = word[i].toUpperCase();
            bool hasUpper = upperFirstIndex.containsKey(upperChar);
            int upperIdx = hasUpper ? upperFirstIndex[upperChar]! : -1;

            if (hasUpper && !wrong.contains(word[i])) {
                
                if (i < upperIdx) {
                    if (alphabet.contains(word[i])) {
                        continue;
                    }
                    count++;
                    alphabet.add(word[i]);
                }
                
                if (alphabet.contains(word[i]) && i > upperIdx) {
                    alphabet.remove(word[i]);
                    wrong.add(word[i]);
                    count--;
                }
            }
        }
    }
    return count;
  }
}