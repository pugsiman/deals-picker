class ProductNameExtractor
  attr_reader :page

  def initialize(page)
    @page = page
  end

  def self.call(page)
    new(page).call
  end

  def call
    []
  end
end
