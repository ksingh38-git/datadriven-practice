def remove_consecutive_dupes(items):
  if not items:
    return []
  result = [items[0]]
  for i in range(1,len(items)):
    if items[i] != items[i-1]:
      result.append(items[i])
    
  return result
