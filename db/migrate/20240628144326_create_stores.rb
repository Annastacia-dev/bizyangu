class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores, id: :uuid do |t|
      t.string :name
      t.string :location
      t.string :contact

      t.timestamps
    end
  end
end
