class AddSearchValueToProductSearch < ActiveRecord::Migration[5.0]
  def change
    add_column :product_searches, :search_value, :string, null: false
  end
end
