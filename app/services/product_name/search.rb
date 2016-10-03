class UndefinedPlatformError < StandardError; end

class ProductName::Search
  class << self
    def call(search_value)
      return if search_value.nil?

      scraper = SetScraper.call
      search_urls.flat_map do |platform, url|
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

    def search_urls
      {
        'amazon' => 'https://www.amazon.com/s/?field-keywords='
      }
    end
  end
end
