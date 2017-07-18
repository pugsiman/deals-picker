class ProductSearchesController < ApplicationController
  def create
    form = SearchProductForm.new(search_value: params[:product_name])
    form.validate!
    search_value = Search.new(form.search_value)
    name_candidates = ProductNameFinder.new(search_value).find
    ProductSearch.create!(search_value: search_value.value)
    render json: { candidates: name_candidates }

  rescue ActiveModel::ValidationError
    render json: { message: 'Invalid search' }, status: :bad_request
  end
end
