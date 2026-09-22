from collections import Counter
def count_occur(items: list, target) -> int:
  freq = Counter(items)
  for i, v in freq.items():
    if  i == target:
      return v
  return 0
  
