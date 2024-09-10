class AddAmountToExpense < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses, :amount, :float
  end
end
