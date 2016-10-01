class SearchProductForm
  include ActiveRecord::Validations
  include Virtus.model

  attribute :search_value, String

  validates :search_value, presence: true, length: { minimum: 3 }

  def persisted?
    false
  end

  def validate!
    raise ValidationError.new(errors: errors) unless valid?
  end
end
