def max_reading_run(readings: list[list[int]]) -> list:
  value, count = readings[0]
  best_ans = value * count if value >0  else value
  current_run = [[value, count]] if value > 0 else [[value, 1]]

  ans = best_ans
  ans_run = current_run.copy()

  for value, count in readings[1:]:
    v1 = best_ans + value * count

    if value > 0:
      v2 = value * count
      new_run = [[value, count]]
    else:
      v2 = value
      new_run = [[value, 1]]

    if v1 >= v2:
      best_ans = v1
      current_run = current_run + [[value, count]]
    else:
      best_ans = v2
      current_run = new_run

    if best_ans > ans:
      ans = best_ans
      ans_run = current_run.copy()

  return [ans, ans_run]

  
  
