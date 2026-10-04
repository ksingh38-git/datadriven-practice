def best_trade(prices: list[int]) -> list[int]:
  if not prices:
    return [0,-1,-1]
  min_price = prices[0]
  min_index = 0
  best_gain = 0
  buy_index = -1
  sell_index = -1
  for i in range(1,len(prices)):
    current_gain = prices[i] - min_price
    if current_gain > best_gain:
      best_gain = current_gain
      sell_index = i
      buy_index = min_index
    elif prices[i] < min_price:
      min_price = prices[i]
      min_index = i
      
  return [best_gain , buy_index, sell_index]
      
    
