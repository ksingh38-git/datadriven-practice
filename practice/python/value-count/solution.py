from collections import Counter
def count_occur(items: list, target) -> int:
  freq = Counter(items)
  for key, value in freq.items():
    if key == target:
      return value
  return 0
  

  
