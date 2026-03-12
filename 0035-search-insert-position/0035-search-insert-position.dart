class Solution {
  int searchInsert(List<int> nums, int target) {
    if(nums.contains(target)){
        return nums.indexOf(target);
    } else{
        if(nums[0]>target){
            return 0;
        } 
        if(nums[nums.length-1]<target){
            return nums.length;
        }
        for(int i=0; i<nums.length;i++){
            if(nums[i]<target && target<nums[i+1]){
                return i+1;
            }
        }
        return 0;
    }
  }
}