PRODUCT_NAME_EXTRACTORS = {
  search_page: {
    'amazon' => -> page { page.search('[id*="result_"] h2').map(&:text) }
  },

  listing_page: {
    'amazon' => -> page { page.at('') }
  }
}

