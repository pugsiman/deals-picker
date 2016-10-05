class UndefinedPlatformError < StandardError; end

class ProductName::Search
  SEARCH_URLS = {
    'amazon' => 'https://www.amazon.com/s/?field-keywords='
  }

  def self.call(search_value)
    self.new(search_value).call
  end

  def initialize(search_value)
    @search_value = search_value
  end

  attr_reader :search_value

  def call
    return if search_value.nil?

    scraper = SetScraper.call
    SEARCH_URLS.flat_map do |platform, url|
      page = scraper.get(url + search_value)
      results_extractor(platform).(page).first(3)
    end.uniq
  end

  private

  def results_extractor(platform)
    case platform
    when 'amazon'
      -> page { page.search('[id*="result_"] h2').map(&:text) }
    else
      raise UndefinedPlatformError, platform
    end
  end
end
