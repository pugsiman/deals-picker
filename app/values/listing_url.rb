class ListingUrl
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def amazon?
    url =~ /(http|https).+amazon.+\/dp\/[a-zA-Z0-9]+(.+&m=[a-zA-Z0-9]+)?/
  end

  def ebay?
    false
  end
end
