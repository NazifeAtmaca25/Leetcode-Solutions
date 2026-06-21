class Solution {
  int maxIceCream(List<int> costs, int coins) {
    int count=0;
    costs.sort();

    for(int i=0;i<costs.length;i++){
        if(coins-costs[i] >= 0){
            coins-=costs[i];
            count++;
        }
    }

    return count;
  }
}