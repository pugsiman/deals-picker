class ExtractProductNameFromPage
  def initialize(args)
    @url = args.fetch(:url)
    @extractor = args.fetch(:name_extractor)
  end

  def self.call(search_value)
    new(search_value).call
  end

  def call
    scraper = SetScraper.call
    page = scraper.get(search_value)
    extractor.(page)
  end

  private

  attr_reader :url, :extractor
end
