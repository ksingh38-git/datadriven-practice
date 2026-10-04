def running_total(deposits):
  sum = 0
  res = []
  for d in deposits:
    sum += d
    res.append(sum)
    


  return res
