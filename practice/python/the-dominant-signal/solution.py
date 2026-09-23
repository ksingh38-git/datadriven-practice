from collections import Counter
def most_frequent(items: list) -> list:
  frq = Counter(items)
  max_r = float('-inf')
  res = [] 
  for i , key in frq.items():
    if key > max_r:
      max_r = key
      res = [i]
    elif key == max_r:
      res.append(i)
      
  res.sort()
  return res
