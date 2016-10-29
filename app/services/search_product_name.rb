class SearchProductName
  SEARCH_URLS = { # temp
    'amazon' => 'https://www.amazon.com/s/?field-keywords='
  }

  def self.call(search_value)
    self.new(search_value).call
  end

  def initialize(search_value)
    @search_value = search_value
  end

  def call
    scraper = SetScraper.call
    SEARCH_URLS.flat_map do |platform, url|
      page = scraper.get(url + search_value)
      extract_results(platform, page).first(3)
    end.uniq
  end

  private

  attr_reader :search_value

  def extract_results(platform_name, page)
    PRODUCT_NAME_EXTRACTORS.fetch(platform_name).call(page)
  end
end
