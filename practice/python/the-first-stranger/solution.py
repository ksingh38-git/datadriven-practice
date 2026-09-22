from collections import Counter
def first_non_repeated(s: str) -> str:
  freq = Counter(s)
  for i in s:
    if freq[i] == 1:
      return i
      
    
  return ""
