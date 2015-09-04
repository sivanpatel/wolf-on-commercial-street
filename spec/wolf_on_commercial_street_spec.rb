require 'wolf_on_commercial_street'

describe WolfOnCommercialStreet do

  it 'calculates the optimal buy and sell days' do
    wolfy = WolfOnCommercialStreet.new([10,2,5,8,9,1,6,7,9,8])
    
    expect(wolfy.maximise_profits).to eq(
      "Buy on day 6 and sell on day 9"
    )
  end
end
