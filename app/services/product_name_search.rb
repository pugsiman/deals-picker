class ProductNameSearch
  attr_reader :search_value

  def initialize(search_value)
    @search_value = search_value
  end

  def search
    if url_given?
      get_product_name_by_url
    else

    end
  end

  private

  def url_given?
    URI.parse(search_value).kind_of?(URI::HTTP)
  end

  def get_product_name_by_url

  end
end
