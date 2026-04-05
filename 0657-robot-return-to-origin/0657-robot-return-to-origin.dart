class Solution {
  bool judgeCircle(String moves) {
    int x=0,y=0;
    int count=moves.length;

    while(count!=0){
        switch(moves[count-1]){
            case 'R':
            x++;
            case 'L':
            x--;
            case 'U':
            y++;
            case 'D':
            y--;
        }
        count--;
    }

    return x==0 && y==0 ? true: false;
  }
}