class Solution {
  bool canAliceWin(int n) {
  return switch (n) {
      < 10 => false, 
      < 19 => true,  
      < 27 => false, 
      < 34 => true,  
      < 40 => false, 
      < 45 => true,  
      < 49 => false, 
      _ => true,     
    };
  }
}