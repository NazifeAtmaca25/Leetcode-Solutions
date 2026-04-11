class Solution {
  int minimumDistance(List<int> nums) {

    Map<int, List<int>> lastIndices = {};
    int? minDistance;

    for (int i = 0; i < nums.length; i++) {
      int currentVal = nums[i];

      if (!lastIndices.containsKey(currentVal)) {
        lastIndices[currentVal] = [i];
      } else {
        lastIndices[currentVal]!.add(i);

        if (lastIndices[currentVal]!.length == 3) {
          List<int> idx = lastIndices[currentVal]!;
          int sum = (idx[0] - idx[1]).abs() + (idx[1] - idx[2]).abs() + (idx[0] - idx[2]).abs();
          
          if (minDistance == null || sum < minDistance) {
            minDistance = sum;
          }
          lastIndices[currentVal]!.removeAt(0);
        }
      }
    }

    return minDistance ?? -1;
  }
}