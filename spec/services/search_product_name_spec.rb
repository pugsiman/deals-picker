require 'rails_helper'

RSpec.describe SearchProductName do
  describe '.call' do
    context 'results found' do
      it 'returns product name candidates' do
        VCR.use_cassette 'product_name/search/results_found' do
          expect(described_class.('iron rangers')).to eq [
            "Red Wing Heritage Iron Ranger 6\" Boot",
            "Wolverine 1000 Mile Men's Wolverine 1000 Mile Boots",
            "Chippewa Men's 6\" Rugged Handcrafted Lace-Up Boot"
          ]
        end
      end
    end

    context 'result not found' do
      it 'returns error' do
        VCR.use_cassette 'product_name/search/results_not_found' do
          expect(described_class.('ahsdkjashdkajsdhaksjdhasjkhd')).to eq []
        end
      end
    end
  end
end
