class SearchProductNames
  def self.call(args)
    self.new(args).call
  end

  def initialize(args)
    @search_value = args.fetch(:name)
    @searchables = args.fetch(:searchables)
  end

  def call
    http_client = SetClient.call
    searchables.flat_map do |searchable|
      binding.pry
      page = http_client.get(searchable[:url] + search_value)
      extractor = Extractors::ProductNamesFromSearch.create(searchable[:platform])
      extractor.extract(page).first(3)
    end.uniq
  end

  private

  attr_reader :search_value, :searchables
end
