class Solution {
  int countMajoritySubarrays(List<int> nums, int target) {
    int toplamGecerli=0;

    for(int i=0;i<nums.length;i++){
        int hedefSayaci=0;

        for(int j=i;j<nums.length;j++){
            if(nums[j]==target){
                hedefSayaci++;
            }

            if(2*hedefSayaci>(j-i+1)){
            toplamGecerli++;
            }
        }
    }

    return toplamGecerli;
  }
}