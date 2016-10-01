class RemoveUnecessaryFieldsFromListing < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :name
    remove_column :listings, :image_url
  end
end
