class SearchProductForm
  include Virtus.model
  include ActiveModel::Validations

  attribute :search_value, String

  validates :search_value, presence: true, length: { minimum: 3 }

  def persisted?
    false
  end

  def validate!
    raise Errors::ValidationError.new(errors: errors) unless valid?
  end
end
