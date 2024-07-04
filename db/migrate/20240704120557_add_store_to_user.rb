class AddStoreToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :store, null: false, foreign_key: true, type: :uuid
  end
end
