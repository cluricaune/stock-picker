daily_price = [17,3,6,9,15,8,6,1,10]

def stock_picker(daily_price)
  prices_hash = Hash.new(0)
  daily_price.map {|num| prices_hash[num] = index(num)}
  return prices_hash
end

p stock_picker(daily_price)