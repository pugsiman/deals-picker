class Search
  attr_reader :value

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

  def amazon?
    return false unless url?
    value =~ /(http|https).+amazon.+\/dp\/[A-Z0-9]{10}(.+&m=[a-zA-Z0-9]+)?/
  end

  def ebay?
    false
  end
end
