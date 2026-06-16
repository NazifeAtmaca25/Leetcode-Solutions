class Solution {
  String processStr(String s) {
    List<String> result=[];
    for( int i=0;i<s.length;i++){
        switch(s[i]){
            case '#':
                result+=result;
            case '*':
                if(result.isNotEmpty){
                    result.removeLast();
                }
            case '%':
                if(result.isNotEmpty){
                    result=result.reversed.toList();
                }
            default:
                result.add(s[i]);
        }
    }

    return result.join();

  }
}