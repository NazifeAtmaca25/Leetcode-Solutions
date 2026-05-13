class Solution {
  List<List<int>> generate(int numRows) {

    List<List<int>> mainList=[[1],[1,1]];
    List<int> miniList=[];
    List<int> temp=[ 1 , 1];
    int count=2;

    if(numRows==0){
        return [];
    }
    if(numRows==1){
        return [[1]];
    }
    if(numRows == 2){
        return [[1],[1,1]];
    }


    while(count < numRows){
        for(int i=0;i<count-1;i++){
            miniList.add(temp[i]+temp[i+1]);
        }
        miniList.add(1);
        miniList.insert(0,1);
        mainList.add(miniList);
        temp=[];
        temp.addAll(miniList);
        miniList=[];
        count++;
    }
    return mainList;
  }
}