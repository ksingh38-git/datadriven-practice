def high_water_marks(readings: list) -> list:
  res = []
  max_v = float('-inf')
  for read in readings:
    if max_v < read:
      max_v = read
      res.append(max_v)
    else:
      res.append(max_v)
        
  return res
