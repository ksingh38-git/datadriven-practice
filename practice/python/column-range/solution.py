def min_and_max(nums):
  max_v = float('-inf')
  min_v = float('inf')
  if len(nums) == 1:
    return [nums[0], nums[0]]
  for i in nums:
    if i > max_v:
      max_v = i
    elif i < min_v:
      min_v = i

  return [min_v, max_v]
