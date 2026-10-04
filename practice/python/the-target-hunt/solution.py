def find_pairs(nums: list[int], target: int) -> list[list[int]]:
  res = []
  available = {}
  for num in nums:
    complement = target - num
    if available.get(complement, 0) > 0:
      res.append([complement, num])
      available[complement] -= 1
    else:
      available[num] =  available.get(num, 0) + 1
    
    
  return res
