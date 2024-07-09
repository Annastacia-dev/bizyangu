class RemovePriceAndDescriptionFromProduct < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :price
    remove_column :products, :description
  end
end
