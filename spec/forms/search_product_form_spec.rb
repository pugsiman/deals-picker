require 'rails_helper'

RSpec.describe SearchProductForm do
  context 'valid' do
    it 'does not raise an error' do
      form = described_class.new(search_value: 'asd')
      expect { form.validate! }.not_to raise_error
    end
  end

  context 'invalid' do
    it 'raises an error' do
      form = described_class.new(search_value: '')
      expect { form.validate! }.to raise_error Errors::ValidationError
    end
  end
end
