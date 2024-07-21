class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks, id: :uuid do |t|
      t.datetime :date
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.references :day, null: false, foreign_key: true, type: :uuid
      t.string :cost
      t.integer :quantity

      t.timestamps
    end
  end
end
