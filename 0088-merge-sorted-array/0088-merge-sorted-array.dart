class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if(m==0){
        nums1.clear();
    }
    if(n==0){
        nums2.clear();
    }
    if(nums1.length!=m && !nums2.isEmpty){
        nums1.removeRange(m,nums1.length);
    }
    if(nums2.length!=n && !nums2.isEmpty){
        nums2.removeRange(n,nums2.length);
    }
    nums1.addAll(nums2);
    nums1.sort();
    for(int i=0;i<nums1.length;i++){
        print(nums1[i]);
    }

  }
}