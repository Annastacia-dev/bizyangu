class MakeDayNullableInExpense < ActiveRecord::Migration[7.1]
  def change
    change_column_null :expenses, :day_id, true
  end
end
