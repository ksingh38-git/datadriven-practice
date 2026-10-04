def min_and_max(nums):
  min_v = float('inf')
  max_v = float('-inf')
  for num in nums:
    if num > max_v:
      max_v = num
    if num < min_v:
      min_v = num

  return [min_v, max_v]
