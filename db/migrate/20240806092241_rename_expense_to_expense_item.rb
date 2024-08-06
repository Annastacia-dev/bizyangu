class RenameExpenseToExpenseItem < ActiveRecord::Migration[7.1]
  def change
    rename_table :expenses, :expense_items
  end
end
