class CreateExpense < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses, id: :uuid do |t|
      t.references :day, null: false, foreign_key: true, type: :uuid
      t.references :expense_item, null: false, foreign_key: true, type: :uuid
      t.datetime :date

      t.timestamps
    end
  end
end
