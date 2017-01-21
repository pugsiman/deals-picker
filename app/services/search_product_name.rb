class SearchProductName
  SEARCHABLE_URLS = [
    'https://www.amazon.com/s/?field-keywords='
  ]

  def self.call(args)
    self.new(args).call
  end

  def initialize(args)
    @search_value = args.fetch(:name)
    @name_scraper = args.fetch(:name_scraper)
  end

  def call
    http_client = SetClient.call
    SEARCHABLE_URLS.flat_map do |url|
      page = http_client.get(url + search_value)
      ProductNameExtractor.new(page: page, url: url, extractor: product_name_extractor).extract.first(3)
    end.uniq
  end

  private

  attr_reader :search_value, :name_scraper

  def product_name_extractor
    AmazonProductNameExtractor.new
  end
end
