class Solution {
  int maximumElementAfterDecrementingAndRearranging(List<int> arr) {
    arr.sort();
    arr[0]=1;
    for(int i=0;i<arr.length-1;i++){
        if((arr[i]-arr[i+1]).abs()>1){
            arr[i+1]=arr[i]+1;
        }
    }

    return arr[arr.length-1];
  }
}