class DropDayAndDateFromExpense < ActiveRecord::Migration[7.1]
  def change
    remove_column :expenses, :day_id
    remove_column :expenses, :date
  end
end
