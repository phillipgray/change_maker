require_relative './change_maker'

describe ChangeMaker do
  describe '#calculate' do
    it 'returns 4 quarters when given $1.00' do
      maker = ChangeMaker.new(100)
      expect(maker.calculate).to eq({quarter: 4})
    end

    it 'returns one of each coin when given $0.41' do
      maker = ChangeMaker.new(41)
      expected_summary = {
        quarter: 1,
        dime: 1,
        nickel: 1,
        penny: 1
      }
      expect(maker.calculate).to eq(expected_summary)
    end

    it 'returns the expected summary when given $0.89' do
      maker = ChangeMaker.new(89)
      expected_summary = {
        quarter: 3,
        dime: 1,
        nickel: 0,
        penny: 4
      }
      expect(maker.calculate).to eq(expected_summary)
    end
  end
end
