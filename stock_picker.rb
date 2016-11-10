def stock_picker stock_prices
  best_margin = [0,0,0] # [buy day, sell day, margin amount]
  stock_prices[0..-2].each_with_index do | buy_price, buy_index |
    stock_prices[buy_index..-1].each_with_index do | sell_price, sell_index |
      margin = sell_price - buy_price
      if  margin > best_margin[2] && margin > 0
        best_margin = [buy_index, buy_index + sell_index, margin]
      end
    end
  end
  best_margin.take(2)
end

stock_input = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker stock_input
