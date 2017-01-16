class SearchProductName
  SEARCHABLE_URLS = [
    'https://www.amazon.com/s/?field-keywords='
  ]

  def self.call(args)
    self.new(args).call
  end

  def initialize(args)
    @search_value = args.fetch(:name)
    @extractor = args.fetch(:name_extractor)
  end

  def call
    scraper = SetScraper.call
    SEARCHABLE_URLS.flat_map do |url|
      page = scraper.get(url + search_value)
      extractor.(page).first(3)
    end.uniq
  end

  private

  attr_reader :search_value, :extractor
end
