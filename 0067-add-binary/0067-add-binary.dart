class Solution {
  String addBinary(String a, String b) {
    BigInt aDonusum=BigInt.parse(a,radix:2);
    BigInt bDonusum=BigInt.parse(b,radix:2);
    BigInt newValue=aDonusum+bDonusum;

    return newValue.toRadixString(2);
    
  }
}