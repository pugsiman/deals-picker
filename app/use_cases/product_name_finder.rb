class ProductNameFinder
  def initialize(search_value)
    @search_value = search_value
  end

  def find
    if url?(search_value)
      ExtractProductNameFromPage.(search_value)
    else
      SearchProductName.(search_value)
    end
  end

  private

  attr_reader :search_value

  def url?(value)
    value =~ /\A#{URI::regexp}\z/
  end
end
