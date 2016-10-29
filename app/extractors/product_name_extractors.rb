PRODUCT_NAME_EXTRACTORS = {
  'amazon' => -> page { page.search('[id*="result_"] h2').map(&:text) }
}

