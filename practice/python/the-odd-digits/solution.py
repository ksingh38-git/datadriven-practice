import re
def extract_odd_from_string(s: str) -> str:
  lst = []
  for ch in re.findall(r'\d', s):
    if int(ch) % 2 == 1:
      lst.append(ch)
  return "".join(lst)
