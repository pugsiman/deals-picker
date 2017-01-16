class ProductNameFinder
  def initialize(search_value)
    @search_value = search_value
  end

  def find
    if search_value.url?
      ExtractProductNameFromPage.(url: search_value, name_extractor: name_extractor)
    else
      SearchProductName.(name: search_value, name_extractor: name_extractor)
    end
  end

  private

  attr_reader :search_value

  def name_extractor
    platform = search_value.platform
    case platform
    when 'amazon'
      AmazonProductNameExtractor
    else raise "Unimplemented extractor for #{platform}"
    end
  end
end
