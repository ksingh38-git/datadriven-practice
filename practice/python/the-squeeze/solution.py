
def the_squeeze(s: str):
  if not s:
    return s
  result = ""
  count = 1
  for i in range(1, len(s)):
    if s[i] == s[i-1]:
      count += 1
    else:
      result += f"{s[i-1]}{count}"
      count = 1
  result += f"{s[-1]}{count}"
  if len(result) >= len(s):
    return s
    
  return result
