# Algorithm & Instructions

def stock_picker(stock_prices)
  max_profit = 0
  best_days = Array.new(2)

  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        current_profit = sell_price - buy_price
        if current_profit > max_profit
          max_profit = current_profit
          best_days = [buy_day, sell_day]
        end
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])