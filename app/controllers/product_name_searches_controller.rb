class ProductNameSearchesController < ApplicationController
  def create
    form = SearchProductForm.new(params[:product])
    form.validate!
    search_value = Search.new(form.search_value)
    name_candidates = ProductNameFinder.find(search_value)

  rescue ValidationError
    render json: { message: 'Invalid search' }, status: :bad_request
  end
end
