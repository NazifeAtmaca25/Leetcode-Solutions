class Solution {
  int minimumCost(List<int> cost) {
    int totalCost=0;
    int count=0;
    int index=cost.length;
    cost.sort();

    if(cost.length==0){
        return 0;
    }
    if(cost.length==1){
        return cost[0];
    }
    if(cost.length==2){
        return cost[0]+cost[1];
    }

    while(index>0){
        count++;
        if(count%3 != 0){
        totalCost+=cost[index-1];
        }
        index--;
    }
    return totalCost;
  }
}