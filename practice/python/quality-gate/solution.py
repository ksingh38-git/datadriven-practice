def first_failing_reading(readings):
  for i in range(len(readings)):
    if readings[i] <= 0:
      return i
  return -1
