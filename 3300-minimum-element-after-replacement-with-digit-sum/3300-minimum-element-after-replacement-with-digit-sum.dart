class Solution {
  int minElement(List<int> nums) {
    String temp="";
    List<int> tempList=[];
    int sum=0;
    for(int i=0;i<nums.length;i++){
        temp=nums[i].toString();
        for(int j=0;j<temp.length;j++){
            sum+=int.parse(temp[j]);
        }
        tempList.add(sum);
        sum=0;
        temp="";
    }

    return tempList.reduce(min);
  }
}