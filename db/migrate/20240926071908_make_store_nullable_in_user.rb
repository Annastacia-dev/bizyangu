class MakeStoreNullableInUser < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :store_id, true
  end
end
