class Solution {
  int maxProduct(int n) {
    int maxValue=0;
    String value=n.toString();

    for(int i=0;i<value.length-1;i++){
        for(int j=i+1;j<value.length;j++){
            int productValue=int.parse(value[i])*int.parse(value[j]);
            if(productValue>maxValue){
                maxValue=productValue;
            }
        }
  }

  return maxValue;

  }
}