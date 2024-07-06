class CreateProductCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :product_categories, id: :uuid do |t|
      t.string :name
      t.references :store, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
