class Solution {
  bool isPalindrome(int x) {
    String value=x.toString();
    if(value.length==1){
        return true;
    }
    int right= value.length-1;
    int left=0;

    for(int i=0;i<value.length;i++){
        if(value[left]!=value[right]){
            return false;
        }
        left++;
        right--;
    }
    return true;
    
  }
}