def subarray_signal(nums: list[int]):
  res = float('-inf')
  low = high = 0
  sum = 0
  while high < len(nums):
    sum = sum + nums[high]
    res = max(sum ,res)
    while sum <= 0 and low <= high:
      sum = sum - nums[low]
      low += 1
    high = high + 1
  return res
   
    
