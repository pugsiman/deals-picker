class ProductName::Find
  attr_reader :search_value

  def initialize(search_value)
    @search_value = Addressable::URI.parse search_value
  end

  def call
    if valid_url_given?
      get_product_name_by_url(platform)
    else
      get_product_name_by_search
    end
  end

  private

  def valid_url_given?
    true
  end

  def platform
    search_value.host.to_s.split('.').first
  end

  def get_product_name_by_search
    ProductName::Search.call(search_value.to_s)
  end

  def get_product_name_by_url(platform)
    ProductName::Extract.call(platform, search_value)
  end
end

