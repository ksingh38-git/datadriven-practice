
def the_deep_dictionary(data: dict[str, list[int]]):
  m = float('-inf')
  for key , value in data.items():
    count = 0
    for v in value:
      count = count + 1
    if count > m:
      m = count 
      most_review = key
      
  
    
  return most_review
