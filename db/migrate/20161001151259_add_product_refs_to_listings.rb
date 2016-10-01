class AddProductRefsToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :product, foreign_key: true
  end
end
