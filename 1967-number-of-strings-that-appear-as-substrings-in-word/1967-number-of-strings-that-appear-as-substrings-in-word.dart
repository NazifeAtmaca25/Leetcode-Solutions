class Solution {
  int numOfStrings(List<String> patterns, String word) {
    int count=0;
    for(int i=0;i<patterns.length;i++){
        if(word.contains(patterns[i])){
            count++;
        }
    }
    return count;
  }
}