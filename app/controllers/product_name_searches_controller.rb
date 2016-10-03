class ProductNameSearchesController < ApplicationController
  def create
    form = SearchProductForm.new(params[:product])
    form.validate!
    name_candidates = ProductName::Find.call(form.search_value)

  rescue ValidationError
    render json: ':('
  end
end
