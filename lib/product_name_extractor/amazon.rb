class ProductNameExtractor::Amazon < ProductNameExtractor
  def extract
    if search_page?
      @page.search('[id*="result_"] h2').map(&:text)
    else
      @page.at('.title')
    end
  end

  def search_page
    
  end
end
