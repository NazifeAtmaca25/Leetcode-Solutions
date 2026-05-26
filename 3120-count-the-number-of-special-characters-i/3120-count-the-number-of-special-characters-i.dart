class Solution {
  int numberOfSpecialChars(String word) {
    int count=0;
        List<String> alphabet=[];
        for(int i=0;i<word.length;i++){
            if(word[i]==word[i].toLowerCase() && !alphabet.contains(word[i])){
                if(word.contains(word[i].toUpperCase())){
                    count++;
                    alphabet.add(word[i]);
                    alphabet.add(word[i].toUpperCase());
                }
            }
            if(word[i]==word[i].toUpperCase() && !alphabet.contains(word[i])){
                if(word.contains(word[i].toLowerCase())){
                    count++;
                    alphabet.add(word[i]);
                    alphabet.add(word[i].toLowerCase());
                }
            }
        }
        return count;
  }
}