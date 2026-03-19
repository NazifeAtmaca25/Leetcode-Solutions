class Solution {
  String longestCommonPrefix(List<String> strs) {
    String pref="";
    int index=0;
    bool isSame=true;

    if (strs == null || strs.isEmpty) {
      return "";
    }
    if (strs.length == 1) return strs[0];

    while(isSame){

        for(int i=0;i<strs.length-1;i++){
            if(index>= strs[i].length || index>= strs[i+1].length || strs[i][index]!=strs[i+1][index]){
                isSame=false;
                break;
            }
        }
        if(isSame){
            pref += "${strs[0][index]}";
            index++;
        }
    }
    return pref;
  }
}