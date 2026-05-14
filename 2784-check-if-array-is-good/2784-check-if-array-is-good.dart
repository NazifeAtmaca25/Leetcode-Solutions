class Solution {
  bool isGood(List<int> nums) {
    int maxNum=nums.reduce(max);
    nums.sort();
    if(nums.length== maxNum+1){
        if(nums.length==2){
            return true;
        }
        bool hasDublicated= nums.take(maxNum-1).length == nums.take(maxNum-1).toSet().length;
        if(hasDublicated){
            if(nums[maxNum]==nums[maxNum-1] && nums[maxNum-1] != nums[maxNum-2]){
                return true;
            }
        }
    }

    return false;
  }
}