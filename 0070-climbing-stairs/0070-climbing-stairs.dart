class Solution {
  int climbStairs(int n) {
    int prevSum=1;
    int newSum=1;
    int temp;
    if(n==1) return 1;

    for(int i=2;i<=n;i++){
        temp=newSum;
        newSum+=prevSum;
        prevSum=temp;
    }
    return newSum;
  }
}