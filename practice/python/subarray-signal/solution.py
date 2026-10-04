def subarray_signal(nums: list[int]):
  best_ans = nums[0]
  ans = nums[0]
  res = float('-inf')
  for i in range(1,len(nums)):
    v1 = nums[i]
    v2 = best_ans + nums[i]
    best_ans = max(v1, v2)
    ans = max(best_ans, ans)
  return ans
    
    
