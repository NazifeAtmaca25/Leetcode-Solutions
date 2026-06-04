class Solution {
  int totalWaviness(int num1, int num2) {
    int peak=0;
    int valley=0;
    int num1Length=num1.toString().length;
    int num2Length=num2.toString().length;
    int newNum=0;

    if(num1Length < 3 && num2Length < 3){
        return 0;
    }
    if(num1Length < 3 && num2Length > 2){
            num1==100;
        }
    
    while(num1<=num2){
        int measure=num1.toString().length-1;
        String nums=num1.toString();
        for(int i=1;i<measure;i++){
            if(int.parse(nums[i-1]) < int.parse(nums[i]) && int.parse(nums[i+1]) < int.parse(nums[i])){
                peak++;
            }
            if(int.parse(nums[i-1]) > int.parse(nums[i]) && int.parse(nums[i+1]) > int.parse(nums[i])){
                valley++;
            }
        }
        num1++;
    }

    return peak+valley;
  }
}