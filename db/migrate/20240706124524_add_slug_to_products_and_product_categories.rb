class AddSlugToProductsAndProductCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :slug, :string
    add_column :product_categories, :slug, :string
  end
end
