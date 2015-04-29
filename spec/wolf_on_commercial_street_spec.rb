require 'wolf_on_commercial_street'

describe ProfitMaximizer do

  it 'returns nils when called with an empty array' do
    profit_maximizer = ProfitMaximizer.new([])
    expect(profit_maximizer.calculate([])).to eq(
      { buy_day: nil, 
       sell_day: nil })
  end

  it 'returns most profitable days from a stock linearly gaining in value' do
    profit_maximizer = ProfitMaximizer.new([1,2,3,4,5,6,7,10])
    expect(profit_maximizer.calculate(stock_prices)).to eq(
      { buy_day: 1,
        sell_day: 8 })
  end
end
