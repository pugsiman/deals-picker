class CreateProductSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :product_searches do |t|

      t.timestamps
    end
  end
end
