class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.float :price
      t.string :image_url
      t.string :url

      t.timestamps
    end
  end
end
