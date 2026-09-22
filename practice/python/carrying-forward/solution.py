def running_total(deposits):
  count = 0
  result = []
  for total in deposits:
    count = count + total
    result.append(count)


  return result
