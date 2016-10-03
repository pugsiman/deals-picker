module ProdcutName
  class Search
    attr_reader :search_value

    def initialize(search_value)
      @search_value = URI search_value
    end

    def call

      if url_given?
        get_product_name_by_url
      else

      end
    end

    private

    def url_given?
      search_value.kind_of? URI::HTTP
    end

    def get_product_name_by_url
      platform = search_value.host.to_s.split('.').first
      ProductName::Extract.call(platform)
    end
  end
end
