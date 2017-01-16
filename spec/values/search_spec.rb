require 'rails_helper'

RSpec.describe Search do
  describe '#url?' do
    it 'returns whether a search value is url or not' do
      value = described_class.new('http://definitely-some-url.com')
      expect(value.url?).to be_truthy
    end
  end

  describe '#platform' do
    it 'returns the platform' do
      value = described_class.new('https://www.amazon.com/Standing-Desk-Black/dp/B00JI6NCCF/?m=A1FY13EDY08TTN')
      expect(value.platform).to eq 'amazon'
    end
  end
end
