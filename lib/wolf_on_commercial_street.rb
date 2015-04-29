class ProfitMaximizer

  def initialize(stock_prices)
    @stock_prices = stock_prices 
    @best_buy_day  = stock_prices.first
    @best_sell_day = best_buy_day.next
    @record_profit = 0
  end

  def calculate(stock_prices)
    buy_day, sell_day = calculate_most_profitable_combination(stock_prices)
    { buy_day: best_buy_day,
     sell_day: best_sell_day } 
  end

  def calculate_most_profitable_combination(stock_prices)
    stock_prices.each_with_index do |price, day|



    end
  end

  private

  attr_reader :stock_prices, :best_buy_day, :best_sell_day, :record_profit
end

