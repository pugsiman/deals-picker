class ExtractProductNameFromPage
  def initialize(search_value)
    @search_value = search_value
  end

  def self.call(search_value)
    new(search_value).call
  end

  def call
    scraper = SetScraper.call
    page = scraper.get(search_value)
    platform_name = parse_platform_name
    PRODUCT_NAME_EXTRACTORS[:listing_page].fetch(platform_name).call(page)
  end

  private

  attr_reader :search_value

  def parse_platform_name
    nil
  end
end
