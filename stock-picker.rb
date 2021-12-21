require "pp"

def stock_picker(daily_price)
  record = 0
  day_to_buy = nil
  day_to_sell = nil
  daily_price.each do |x|
    daily_price.each do |y|
      if daily_price.index(x) < daily_price.index(y)
        profit = -x + y
        if profit > record
          day_to_buy = x
          day_to_sell = y
          record = profit
        end
      end
    end
  end
  p [daily_price.index(day_to_buy), daily_price.index(day_to_sell)]
end



daily_price = [10,9,8,7,6,50,4,3,2,1]
#[17,3,6,9,15,8,6,1,10]
stock_picker(daily_price)