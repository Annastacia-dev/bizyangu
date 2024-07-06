class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.references :product_category, null: false, foreign_key: true, type: :uuid
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
