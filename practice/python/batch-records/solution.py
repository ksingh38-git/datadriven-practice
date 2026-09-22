def chunk_list(lst, n):
  res = []
  for i in range(0, len(lst), n):
    res.append(lst[i:i+n])



  return res
