class Solution {
  int minimumDistance(List<int> nums) {
    List<int> distance = [];

    if (nums.length < 3) {
      return -1;
    }

    for (int i = 0; i < nums.length; i++) {
      List<int> index = []; 
      index.add(i); 

      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          index.add(j);
        }
      }

      if (index.length >= 3) {
        index.sort(); 

        for (int k = 0; k <= index.length - 3; k++) {
          int a = index[k];
          int b = index[k + 1];
          int c = index[k + 2];

          int sum = (a - b).abs() + (b - c).abs() + (a - c).abs();
          distance.add(sum);
        }
      }
    }

    if (distance.isEmpty) {
      return -1;
    }

    distance.sort();
    return distance[0];
  }
}