class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses, id: :uuid do |t|
      t.string :title
      t.integer :frequency, default: 0
      t.float :amount
      t.references :store, null: false, foreign_key: true, type: :uuid
      t.references :day, null: false, foreign_key: true, type: :uuid
      t.datetime :date

      t.timestamps
    end
  end
end
