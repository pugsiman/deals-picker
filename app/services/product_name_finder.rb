class ProductNameFinder
  SEARCHABLES = [
    { url: 'https://www.amazon.com/s/?field-keywords=', platform: 'amazon' }
  ].freeze

  def initialize(search_value)
    @search_value = search_value
  end

  def find
    if search_value.url?
      ExtractProductNameFromPage.(url: search_value.value)
    else
      SearchProductNames.(name: search_value.value, searchables: SEARCHABLES)
    end
  end

  private

  attr_reader :search_value
end
