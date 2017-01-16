require 'rails_helper'

RSpec.describe Search do
  describe '#url?' do
    it 'returns whether a search value is url or not' do
      value = described_class.new('http://definitely-some-url.com')
      expect(value.url?).to be_truthy
    end
  end

  describe '#amazon?' do
    it 'returns true if search value is amazon url' do
      value = described_class.new('https://www.amazon.com/Standing-Desk-Black/dp/B00JI6NCCF/?m=A1FY13EDY08TTN')
      expect(value.amazon?).to be_truthy
    end
  end
end
