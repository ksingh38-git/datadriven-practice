def dedup_preserve_order(items: list) -> list:
  seen = set()
  result = []
  for i in items:
    if i not in seen:
      seen.add(i)
      result.append(i)
  return result
    
    
    
