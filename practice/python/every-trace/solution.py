def index_of_all(readings, target):
  res = []
  for i in range(len(readings)):
    if readings[i] == target:
      res.append(i)


  return res
