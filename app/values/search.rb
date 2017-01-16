class Search
  attr_reader :value

  AMAZON_REGEX = /(http|https).+amazon.+\/dp\/[A-Z0-9]{10}/
  EBAY_REGEX = /(http|https).+ebay.+\/itm\//

  def initialize(value)
    @value = value
  end

  def ==(other_search_value)
    value == other_search_value
  end

  def !=(other_search_value)
    value != other_search_value
  end

  def url?
    value =~ /\A#{URI::regexp}\z/
  end

  def platform
    return unless url?
    return 'amazon' if value =~ AMAZON_REGEX
    return 'ebay'   if value =~ EBAY_REGEX
  end
end
