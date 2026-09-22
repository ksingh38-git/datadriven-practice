def high_water_marks(readings: list) -> list:
  res = []
  max_r = readings[0]
  for i in readings:
    if i > max_r:
      res.append(i)
      max_r = i
    else:
      res.append(max_r)

  return res
