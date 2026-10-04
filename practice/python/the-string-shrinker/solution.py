def compress(s: str) -> str:
  if not s:
    return ''
  r = ''
  count = 1
  for i in range(1,len(s)):
    if s[i] == s[i-1]:
      count += 1
    else:
      r += s[i-1] + (str(count) if count > 1 else '')
      count = 1
  r += s[-1] + (str(count) if count > 1 else '')
  if len(r) >= len(s):
    return s
  return r
    
        
    
      
