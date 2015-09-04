class WolfOnCommercialStreet
  attr_reader :stock_prices

  def initialize(stock_prices)
    @stock_prices = stock_prices
  end

  def maximise_profits
    current_best_p = 0
    current_best_buy = 0
    current_best_sell = 0
    for i in 0...stock_prices.length
      for j in i+1...stock_prices.length
        if @stock_prices[i] <= @stock_prices[j] && @stock_prices[j] - @stock_prices[i] >= current_best_p
          current_best_p = @stock_prices[j] - @stock_prices[i]
          current_best_buy = i+ 1 ; current_best_sell = j+1
        end
      end
    end
    "Buy on day #{current_best_buy} and sell on day #{current_best_sell}"
  end

end
