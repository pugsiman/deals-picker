class AmazonProductNameExtractor
  def extract(searcher)
    if search_page?
      searcher.page.search('[id*="result_"] h2').map(&:text)
    else
      searcher.page.at('mashu')
    end
  end

  private

  def search_page?
    true
  end
end

