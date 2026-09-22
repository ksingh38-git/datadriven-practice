from collections import Counter
def find_duplicates_only(nums: list[int]) -> list[int]:
  lst = []
  freq = Counter(nums)
  for i in nums:
    if freq.get(i,0) > 1:
      if i not in lst:
        lst.append(i)
  return lst
