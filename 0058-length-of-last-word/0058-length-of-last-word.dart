class Solution {
  int lengthOfLastWord(String s) {
    List<String> temp=s.split(" ");
    List<String> tempList = [];
    for(var item in temp){
        if(item.isNotEmpty){
            tempList.add(item);
        }
    }
    return tempList[tempList.length-1].length;
  }
}