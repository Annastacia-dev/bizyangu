class AddStoreToDay < ActiveRecord::Migration[7.1]
  def change
    add_reference :days, :store, null: false, foreign_key: true, type: :uuid
  end
end
