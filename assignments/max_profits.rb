
def max_profit(prices)
    max_profit = 0
    min_price = prices[0] 
    
    
    prices.each do |current_price|
        if current_price < min_price
            min_price = current_price
        end
        current_profit = current_price - min_price

        if current_profit > max_profit
            max_profit = current_profit
        end
    end 
    puts max_profit
    return max_profit
end 



max_profit([7,1,5,3,6,4])