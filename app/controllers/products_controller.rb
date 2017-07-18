class ProductSearchesController < ApplicationController
  def create
    Product.create!(name: params[:selected_candidate_name]) # Product::Create.(name: params[:selected_candidate_name])

    render json: {  }

  rescue ActiveModel::ValidationError
    render json: { message: '' }, status: :bad_request
  end
end
