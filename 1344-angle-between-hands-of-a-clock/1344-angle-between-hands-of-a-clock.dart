class Solution {
  double angleClock(int hour, int minutes) {
    double hourAngle;
    double minutesAngle;
    double result;
    double secondResult;

    if(hour==12){
        hourAngle= 30*(minutes/60);
    }

    hourAngle= hour*30 +30*(minutes/60);

    if(minutes==00){
        minutesAngle=0;
    }
    minutesAngle=minutes*6;
    
    result=(hourAngle-minutesAngle).abs();
    secondResult=360-result;


    return result>secondResult ? secondResult : result;

    
  }
}