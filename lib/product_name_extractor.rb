class ProductNameExtractor
  attr_reader :page
  attr_accessor :extractor

  def initialize(args)
    @page = args.fetch(:page)
    @url = args.fetch(:url)
    @extractor = args.fetch(:extractor)
  end

  def extract
    extractor.extract(self)
  end
end
