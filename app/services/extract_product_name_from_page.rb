class ExtractProductNameFromPage
  def initialize(search_value)
    @url = search_value
  end

  def self.call(search_value)
    new(search_value).call
  end

  def call
    http_client = SetClient.call
    page = http_client.get(url)
    extractor = Extractors::ProductNameFromListing.create(url.platform)
    [extractor.extract(page)]
  end

  private

  attr_reader :url
end
