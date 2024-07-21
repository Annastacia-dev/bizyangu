class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.references :day, null: false, foreign_key: true, type: :uuid
      t.float :buying_price
      t.float :selling_price
      t.datetime :date

      t.timestamps
    end
  end
end
