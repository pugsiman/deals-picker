class AmazonProductNameExtractor < ProductNameExtractor
  def call
    @page.search('[id*="result_"] h2').map(&:text)
  end
end
