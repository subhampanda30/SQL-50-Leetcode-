public class Solution {
    public int[] TwoSum(int[] nums, int target) {
       Dictionary<int, int> twoSum = new Dictionary<int, int>();
       for (int i = 0; i< nums.Length; i++) {
           int sums = target - nums[i];
           if (twoSum.ContainsKey(sums)) {
               return new int[] { twoSum[sums], i};
          }
          twoSum[nums[i]] = i;
       } 

       return new int[] {};
    }
}