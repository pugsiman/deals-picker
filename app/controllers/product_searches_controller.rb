class ProductSearchesController < ApplicationController
  def create
    form = SearchProductForm.new(params[:product])
    form.validate!

  rescue ValidationError
    render json: ':('
  end
end
