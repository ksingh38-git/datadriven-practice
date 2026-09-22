def prefix_sum(nums):
  left = 0
  res = []
  for i in range(len(nums)):
    left += nums[i]
    res.append(left)






  return res
