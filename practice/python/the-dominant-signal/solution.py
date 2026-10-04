

from collections import Counter
def most_frequent(items: list) -> list:
  freq = Counter(items)
  res = []
  max_val = float('-inf')
  for key, val in freq.items():
    if val > max_val:
      res = [key]
      max_val = val
    elif max_val == val:
      res.append(key)
  return sorted(res)
 
      
